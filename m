Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F1FD689DAB
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 16:17:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234252AbjBCPNr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 10:13:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234253AbjBCPNc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 10:13:32 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70D072597D
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 07:11:28 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id m14so4890555wrg.13
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 07:11:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kGmKrLVAinuf+Yd12cozByuxIVGNNesLNwLCgObEIhQ=;
        b=bQZOosridMitZ85XsgNASWSpQbIYYoe6OaCkcZsZrIoOgpcKlBglkK6Qade9fgx/5v
         GDvMJr9l+4KgLMHQ5XrNClvSRIzqC5KgVO0xxuDZyK01TQUJtSjIhZmGZUhj/qFmVOvL
         qtxnIiKrqKDgABE94zs+vBa81Ep9bhaTQ3gqUjBhhmekeAseaZS5LHDtx/ShyIs3NiJI
         YAA4rCFd7EwVKSegcClHu/eEIMQtX8XsYuGQ1FQj/aBTIUx4HUp0Gv3ueunTHpa6HAoY
         T+RDAQi8slgRqGO81NTBCIA82nxDzoOnFgm8MhNoBcPRPMBw9FyCO4Ushv+goxc2yF/N
         iOnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kGmKrLVAinuf+Yd12cozByuxIVGNNesLNwLCgObEIhQ=;
        b=hhgZJ/TI1VghW7vf8HIoic4Du7Ijv3HfX8uYCy9IR+czDPDzJEFiKcoSvbnIs2hyf/
         OJ0tOI1eFKzJTSUa0RqIXfQWpfuORCgWT3R5ecVy9Yatv5UgOpsuIsQmq5z9H9DEhlcW
         j5swzKo942yLmL3ESviG55DrctTHO9MeUdW3DP5GC8xMVlfMIbNl1oOnBTTSVBxZ5hWk
         MYGMqaiRFFb/0KEFiJvnDkNAIle6VXZT9h0fF73VNbIuBhsmgTi+BkR7cuxex7rwloDp
         tlO23G3PadbMufFf1bHzG5A92f+g7hu8uPjOep98/byo8W8ra+Fgz6ttBh5mBnyDKpYA
         r/8g==
X-Gm-Message-State: AO0yUKUUBFMaH4b4bNPhPf80aa3RnkycSauDX95mOYLSm6JEvto/ucvy
        4urKuBA1sMaapcVkXCWIlCp4Vg==
X-Google-Smtp-Source: AK7set9gQ5JH74bSBe4RleWOEM98URh1eZ02Rn1u6lvKIWMrueK9oJ7Gcfw/lDY1mRKdSvkvzqGRRA==
X-Received: by 2002:a05:6000:1e07:b0:2bf:f7e9:2a18 with SMTP id bj7-20020a0560001e0700b002bff7e92a18mr4243608wrb.45.1675437033335;
        Fri, 03 Feb 2023 07:10:33 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h4-20020a5d5044000000b002bdf3809f59sm2202419wrt.38.2023.02.03.07.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 07:10:33 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-phy@lists.infradead.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-kernel@vger.kernel.org,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        linux-samsung-soc@vger.kernel.org
Cc:     =?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        phone-devel@vger.kernel.org, replicant@osuosl.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Henrik Grimler <henrik@grimler.se>
Subject: Re: (subset) [PATCH 3/8] dt-bindings: phy: samsung,mipi-video-phy: deprecate syscon phandle
Date:   Fri,  3 Feb 2023 16:10:26 +0100
Message-Id: <167543702106.62628.547907360569271270.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-4-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org> <20230127194057.186458-4-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 27 Jan 2023 20:40:52 +0100, Krzysztof Kozlowski wrote:
> The MIPI phy is actually part of the Power Management Unit system
> controller, thus it should be its child, instead of sibling node with
> syscon phandle.
> 
> 

Applied, thanks!

[3/8] dt-bindings: phy: samsung,mipi-video-phy: deprecate syscon phandle
      https://git.kernel.org/krzk/linux/c/4694dd1b9d43f5b8af710b8e4efc25d3cf388a00

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
