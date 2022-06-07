Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B939F53F623
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 08:32:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237006AbiFGGcu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 02:32:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236074AbiFGGcs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 02:32:48 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8FDD248F2
        for <devicetree@vger.kernel.org>; Mon,  6 Jun 2022 23:32:45 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id v19so21595133edd.4
        for <devicetree@vger.kernel.org>; Mon, 06 Jun 2022 23:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=r44uCLGTf2LvxMbhUjT0r8kVMt7PzM2/3o50HhQ87Dc=;
        b=DYgIDzEySTNnHycxV5mkc5AiVuIxlldng1NWt7C6YzROec9/9R9+LJZpzoWO1M/WXW
         tgtUma0xRb5/u5pBofDPr7R8mroRCfSiyy4FfEgiq/pFu7Io34PkDw0yRBMlSo/ZUB4X
         1CWOUdSqjGOjKrFvwaBURkBzn1t24uTwLGA0X+h4y6+qBS/OLCvADK6RcRDlhxPkxHNg
         KR9TD0220JHIP8EKuIFQhrcZMSuhI0XfLHlR3+uvzQSTQJOMw7VzMF8IsrUkcmuKPl+F
         iXwZ7Y4lu7H9hdBy8cv26w/mpD7x3tIAGvdNrDkuZGoyy8O923Ooa4VMYWHvkrO53Xrf
         +gNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=r44uCLGTf2LvxMbhUjT0r8kVMt7PzM2/3o50HhQ87Dc=;
        b=QklE6oM5Q8KvYyfLvl8gy1BrNVR3CwBvKn2acAiqjVJ9R3OVS0pzhXTG8YBE/ojne6
         GfVxH3BtkVfE/u63zS70+IiZkCztcrqPmM1y1XV4w49FokD4nwhNI2x6/pTwnBKlGwra
         VfIHiENCtbMJN5DeC5DTRMSlyP+BeVAsoT2DRmecJboY67t+NPI+8uclGLT2U8IbQKRn
         RV8P1dPeCSy8xDhuA4BK0lUcMJAQHVNZogu6r9LwpuED22tgtRqSEaC7fqEgwFhqjyNd
         z5+l8oDVnQRKzKAVW3fE8XZSoyIQO/TqH6iDc0jXajWV0N5IDTGdzADB7y+7xqI2c+od
         UE4A==
X-Gm-Message-State: AOAM5305+sE2d47WxjBLZwizQCaQGcDb+0S4DjLJEK4uCCXOVgSzMTCT
        vQXkuFbiYg+ms5j3FTMpAA0jGg==
X-Google-Smtp-Source: ABdhPJzNhIE+5I4UaEiNC2q5wJvd0rpfdEvI+zG7vUgbHITfC+hVp3AB8y+be9aU1+TaJE4vA091qw==
X-Received: by 2002:a05:6402:4388:b0:431:52b2:9337 with SMTP id o8-20020a056402438800b0043152b29337mr12213583edc.45.1654583564449;
        Mon, 06 Jun 2022 23:32:44 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id eg13-20020a056402288d00b0042dce73168csm9796349edb.13.2022.06.06.23.32.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 23:32:43 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Chanho Park <chanho61.park@samsung.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: (subset) [PATCH v2 4/6] arm64: dts: exynosautov9: adjust DT style of ufs nodes
Date:   Tue,  7 Jun 2022 08:32:38 +0200
Message-Id: <165458355453.6489.16621129077408311325.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220602053250.62593-5-chanho61.park@samsung.com>
References: <20220602053250.62593-1-chanho61.park@samsung.com> <CGME20220602053329epcas2p407039a6087b6c460d6687b1cc1f3872a@epcas2p4.samsung.com> <20220602053250.62593-5-chanho61.park@samsung.com>
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

On Thu, 2 Jun 2022 14:32:48 +0900, Chanho Park wrote:
> Drop "ufs0-" label name usage of ufs phy and hci nodes.
> Regarding the comments of reg properties, we don't need to illustrate here
> because we can find the description from the dt-binding doc.
> 
> 

Applied, thanks!

[4/6] arm64: dts: exynosautov9: adjust DT style of ufs nodes
      https://git.kernel.org/krzk/linux/c/283d046406c22409d45b3ab31a4c93fe94b66349

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
