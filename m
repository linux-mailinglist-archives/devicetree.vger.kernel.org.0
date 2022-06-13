Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A17F0549CFB
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 21:10:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348490AbiFMTKt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 15:10:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351572AbiFMTKL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 15:10:11 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12BBA2DD47
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 10:08:49 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id r1so5590610plo.10
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 10:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1gML3idNGzOA0oMgNls2+BU5SBWiBm9N/bZBNgDeAxA=;
        b=LjrK5Tw72pH6r07cZyjsZP9qShKbpcYyU2qz6swdXVUYhTp5jJPgQ+wYlFPPrieYSC
         6f6WL8ahuPPPsrE4y+eIlingzwjiCo8vwB/NNlx02keTXe37cuNVORidWT2KrdisE9Y4
         px0+QKCMJBZgYK4wpbYCogFMQkxrs48UN549blKB3vY5i2ro5sCPFsejvg5IB3j2ZLGf
         OlcAQ1uX8yN9ZrxaisIOif/M0RsojN4ophYNCCryAVs2M03hGpbWVAPUoCA6G2ApdSS1
         R7Rkd5KfE9E69HStd5mJfb9AgAMHyNycSymMQHRE9vv7SL3mWB5MEV7cpb9b0Lr2LhEl
         hzFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1gML3idNGzOA0oMgNls2+BU5SBWiBm9N/bZBNgDeAxA=;
        b=lh61E2umovaXPiQDbW2bV7bFKRGSufjZHEyqPcTDiSUWxdih/lu922VjliKYpbenIT
         wTa2zqJfACNz7/OKndVe+fOfnOY86yYNjKLc4WmorALHXp39zn9rU53ljLdxfml+3/U/
         d5Qo2CWDLHKf9d/NIpURX7JTRj1tLL33t0pPZMcJzA/A7zDev/Pf6+weSvjCLI1uV1Sx
         MlKRei9r6XGr4tjydPbopSHTBkZAKD/sXHWuvq0kazelfE6yWFZy58UMLnf6zmVf6lT8
         DJiVNOyoWVSfsQIkL0bkyb3xkghuv8lGcEWIiTV+k+MnrRX/R1oqRv93P8rfCjHFSHI2
         JioA==
X-Gm-Message-State: AJIora/ykuObGAHpFkomjtVyZNRI7tdqkcVXjsD8M+18mGjKJZEh0/uj
        KCDOt3JS5oreKFVRc+e1XlI=
X-Google-Smtp-Source: AGRyM1vOmlNIm8TxD3FVnTYer8FcbncZuM9zaVG4E+EBjhe5zHyefnDA/r/xDFXJRxwiMJI1Ah6i+w==
X-Received: by 2002:a17:902:7b8b:b0:168:a7d0:ddf3 with SMTP id w11-20020a1709027b8b00b00168a7d0ddf3mr632943pll.118.1655140128466;
        Mon, 13 Jun 2022 10:08:48 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 19-20020a170902e9d300b001677841e9c2sm5394742plk.119.2022.06.13.10.08.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jun 2022 10:08:48 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Peter Robinson <pbrobinson@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>, Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        javierm@redhat.com, linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v6 6/6] arm64: config: Enable DRM_V3D
Date:   Mon, 13 Jun 2022 10:08:46 -0700
Message-Id: <20220613170846.238226-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220603092610.1909675-7-pbrobinson@gmail.com>
References: <20220603092610.1909675-1-pbrobinson@gmail.com> <20220603092610.1909675-7-pbrobinson@gmail.com>
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

On Fri,  3 Jun 2022 10:26:10 +0100, Peter Robinson <pbrobinson@gmail.com> wrote:
> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> BCM2711, the SoC used on the Raspberry Pi 4 has a different GPU than its
> predecessors. Enable it.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> Reviewed-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian
