Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1020753F626
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 08:32:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237019AbiFGGcw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 02:32:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236995AbiFGGcu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 02:32:50 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 459802898E
        for <devicetree@vger.kernel.org>; Mon,  6 Jun 2022 23:32:49 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id b8so4930438edj.11
        for <devicetree@vger.kernel.org>; Mon, 06 Jun 2022 23:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=kUL0/+TW0ZmFocb8yDY5jqKbncdLIBblavQc/eaSQJI=;
        b=sftAmM2OlEfC6VJ8zIEA0Xfsy6v2HTaNTjUKMfYdtxoSdcD3vxrEO/PCEGePaDtozC
         xyHlmLmsdRgR2yk1elTff9tbXqil/B41tk+0WtgEj08Gm/1Kmpx2r/HeUOPzdA0SMfGc
         wFE+ZMwPJFu6CpQ03yhMFxJ04tcjr5hJhfqrLepuc7NPW50CeYYD/ZycxufDQK3A+vuv
         T2ZpVYajmKu/RZ+gY+7+/lh8OekW/q2hi1jds/Xh06lKnW8KXQa4oJEoM09itLbjopST
         PwShn5HcVR8etj+2V8Zl0LAGZJFoRFdvIEiublN0VZCnbQrafYQwBrkLSxB59YhB/GsV
         tuKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kUL0/+TW0ZmFocb8yDY5jqKbncdLIBblavQc/eaSQJI=;
        b=DSM9s5vqenAH0Pg19jHDH4ScwZX1Q5SVLmPvscoQ7gJMfrF/F6Bt2ELFSI2DbfloDW
         oeHUCX83HpZxQOQeVBnWZhczS7d3MKf5XlZWNFhQGrjEIKeLZNjHd0zvqyGYN0Mbb7fv
         CQ5IUTiVOKqGMVmT1wEZU+eDnGkkjYv9yGlOfjkY+4OURpfhVFoZExK5QmYDhYo6krpm
         t1wiHD5Ho3LSehO+AjKjA7bqNxAacLwPg5+88xdYBsxID+ARJCsGNs9c0ji1QIXUJB4D
         zfftkcXuf/xEjkfedJuA1K631hPvIwpgzxSTwTDwU5fMOdYuj6eTX+Q924QYvSFUO2Wl
         8IOw==
X-Gm-Message-State: AOAM530Y6WBVzFnscSu6WdoIgHNz4l9fcHc7waEGKMPrBqVk46qGhv6b
        u+dNZGgUmUV7EGq+HZ8zdtd/XSPNn239UQ==
X-Google-Smtp-Source: ABdhPJzMq/JTC9wN4RGWyrxYyQtSlviJZtlJ2Wjip2i6n2thkVBo2E+uQfiitHipF1MrM27CgRNrQQ==
X-Received: by 2002:a05:6402:139a:b0:431:6b50:11a2 with SMTP id b26-20020a056402139a00b004316b5011a2mr8272850edv.72.1654583567642;
        Mon, 06 Jun 2022 23:32:47 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id eg13-20020a056402288d00b0042dce73168csm9796349edb.13.2022.06.06.23.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 23:32:47 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-mmc@vger.kernel.org, Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: (subset) [PATCH v2 2/4] arm64: dts: exynos: align MMC node name with dtschema
Date:   Tue,  7 Jun 2022 08:32:41 +0200
Message-Id: <165458355453.6489.3351290853657960731.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220605163710.144210-3-krzysztof.kozlowski@linaro.org>
References: <20220605163710.144210-1-krzysztof.kozlowski@linaro.org> <20220605163710.144210-3-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 5 Jun 2022 18:37:08 +0200, Krzysztof Kozlowski wrote:
> The node names should be generic and MMC controller dtschema expects
> "mmc".
> 
> 

Applied, thanks!

[2/4] arm64: dts: exynos: align MMC node name with dtschema
      https://git.kernel.org/krzk/linux/c/2164784a4b2700d1929854b5ec6b2169ff449814

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
