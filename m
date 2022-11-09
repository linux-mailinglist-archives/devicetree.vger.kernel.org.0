Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CC5F62323F
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 19:17:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230041AbiKISRn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 13:17:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229551AbiKISRl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 13:17:41 -0500
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 434A72791C
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 10:17:40 -0800 (PST)
Received: by mail-qt1-x82e.google.com with SMTP id e15so10842222qts.1
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 10:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XiGRaU828jf7MvJ0IcR6V3hJ9H5oF5cBAREXTAOdIE0=;
        b=SMdKPRQjXRCmiiJ7ikZLRika40EE8y/1GSg2Rg1mRGOmF/2b/VEWqYF2kfeq3ppYHO
         FsVpL3oS7m52PK8qQXUYKUDTnU+1KK5qQ26XdPCzckQKccfX6Zjh8JXm4l6SWGXrFFE/
         2VY+B7/o1hZHNl8X1AicDFd0mBzU+CWEJv5NoacIFog2FjucS1T27g68Xixzce0Kdhyn
         +yXUwUQcMEdCjNR/KZJTXZoyaNtUTrQeuEkxg18w50FzoElj0B3orfc3AuhsfCi4/2+N
         vdrpYcffuS/OWUTvJqJbyMvCvKseV+dJ/whg6qIwiX5xbm1XdsaJVg/qeODeeVHDV62p
         ISuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XiGRaU828jf7MvJ0IcR6V3hJ9H5oF5cBAREXTAOdIE0=;
        b=w+sSWwdTRXC7lRiDPgy1J40BRGFTuEhSE8vIgWISxQW9oXjGxMG7kEcwAkArChvd8L
         TXDjP8fcpBMCYe9ztgb9BNRbbMEqzlsvxIrUtBmBEjBCkIFyZ5u+MpsofGEMI7R44CNq
         5K562O0/nYMNgs2Zc3OKxMrKamILkGHAZgdNnC9fnitFNttE4P1lu70qLvZ6xZx0s+sK
         H71mU8u+c8DT7SJzYEnMvdrrKh1aqcRX+AlTTqZDLAHe77zsU1hzbxSemh23gHbIA/fv
         V0kapQJ7UYLX5KMnfZSpa3Qm/XiazyJ8d3+DukD+s6pgCArD6KMyNikrqkqnuEyUOsqn
         dvpQ==
X-Gm-Message-State: ACrzQf18dCnUtuMPc8a96bOaQ+pT7Q4TFaQ9QETRW49BDxWwQZP5DFfd
        Avg6O3A6Uqe8EmQLUiInKUg=
X-Google-Smtp-Source: AMsMyM5r7HPZ80HV/PsrF5EZf7lfrMGcEsQ3cwQ6CECnSsJ93M2eo70mf21DCew5/PXR3nYdSqSr4g==
X-Received: by 2002:a05:622a:4106:b0:3a5:108b:7858 with SMTP id cc6-20020a05622a410600b003a5108b7858mr46593014qtb.55.1668017859302;
        Wed, 09 Nov 2022 10:17:39 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id o16-20020a05620a2a1000b006ce3f1af120sm11900568qkp.44.2022.11.09.10.17.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Nov 2022 10:17:38 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Linus Walleij <linus.walleij@linaro.org>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2 v3] dt-bindings: ARM: add bindings for the D-Link DWL-8610AP
Date:   Wed,  9 Nov 2022 10:17:36 -0800
Message-Id: <20221109181736.878564-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221019193449.3036010-1-linus.walleij@linaro.org>
References: <20221019193449.3036010-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 Oct 2022 21:34:48 +0200, Linus Walleij <linus.walleij@linaro.org> wrote:
> The D-Link DWL-8610AP is a pure access point with ethernet in
> and wireless (both 2.4GHz and 5GHz) out.
> 
> Cc: devicetree@vger.kernel.org
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
