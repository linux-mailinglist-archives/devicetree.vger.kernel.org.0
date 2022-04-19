Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F0F85078FE
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 20:42:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357787AbiDSSiX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 14:38:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357409AbiDSShb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 14:37:31 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEF904DF53
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 11:28:59 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id o5so16250759pjr.0
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 11:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hf5LGCMMBuJqPOLfp5Fzuxpe7tE7Nv+tI3/hzLqWdEo=;
        b=bV3h7JEW6BMRCuPCK1kHen5PkRp7gjyZuKGYdF/53PanLoTncl8/3RZUsHeNgPVdCR
         wbupsz3OnzptQ53jxYee22iCRBVlZztVqb4mJt8up/NeTPbf/qOEie5CXwpiJPJK4lvM
         EZ80HJ7TEiu93/eHfD3Ni9BgMQGyc5QIdV8WIiKQmQjMtWUAmMeDLXTQa+wmMi53HUd8
         EWPrMkIDycK3gW0QKUBDtQdEGatBwdoc+brK9rTEiGVIR47rMizQwEu1h1CjNnAlb+hc
         FoWOaHYKHk0OzVMtgZD/WqsinJ98TWFtbL7Bk4xIo7B9gF8W4ZSU5fdOAK6tuA1uu151
         QMZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hf5LGCMMBuJqPOLfp5Fzuxpe7tE7Nv+tI3/hzLqWdEo=;
        b=a+yGGWAEsoabPPowIsnHT0h5eXnz1LTdSg0RUecBx8kn13N/wsoL4Ur58PlGPVZl+O
         CiJUTKKmmwhxTTC88FGBI7/BvPQapoL1XMFKEBUcAQT4CxxWhSX0uJebUg700d8KNvgA
         JH/DxkL/N4Ni24nzyBdXpC660Snq2ObJVk9GDVEk14ZbrQxSZNBsw5LUbP4hqBIB1gwm
         M6GP9EDg8an1JMSig1DUMmVKzccnhf1vjjpXGdp/TS1SQYzX+vcsF+vZWYS8UKpPx45X
         bBRmbkFGh5rMFLJ6goe+co0Zs7IL50dicl0DtV3ZEhGV5VM3a+VW70wFTnCiW4Fqq4wE
         AsWg==
X-Gm-Message-State: AOAM533eSjQ7VNrDOn+drSCtXLLpKBJq01oUT1aqIGz1jUWrjtguTnlu
        S9IEtG/qynHaAL7RtPG1lxI=
X-Google-Smtp-Source: ABdhPJxp1/i9gcXiOt047zPfL43bxHIIzHJfP95EOADuwh3FI2OM7MU7PyxXFGFGi9uiLe9PQyJ3VQ==
X-Received: by 2002:a17:903:2352:b0:159:3fa:261 with SMTP id c18-20020a170903235200b0015903fa0261mr9854650plh.21.1650392939343;
        Tue, 19 Apr 2022 11:28:59 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id c9-20020a63a409000000b0039912d50806sm16976956pgf.87.2022.04.19.11.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 11:28:58 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 5/6] ARM: dts: bcm283x: Remove gpio line name NC
Date:   Tue, 19 Apr 2022 11:28:57 -0700
Message-Id: <20220419182857.176530-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411200143.4876-6-stefan.wahren@i2se.com>
References: <20220411200143.4876-1-stefan.wahren@i2se.com> <20220411200143.4876-6-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 11 Apr 2022 22:01:42 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> The convention to name not connected GPIOs with NC has never been
> adapted. Also newer Raspberry Pi boards like RPi 4 never did. So fix
> this inconsistency by removing all of the NC names.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
