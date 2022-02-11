Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E4924B3056
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 23:23:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243001AbiBKWXe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 17:23:34 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:58480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234605AbiBKWXe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 17:23:34 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7D70D48
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 14:23:28 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id n23so18682249pfo.1
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 14:23:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=0HcJdBxWGaFUKbYBP+6BwkgnN7wmoSZSkr6WKxF6Lv8=;
        b=ljItznAcpPzaL67IcvUfAqSxLlyeCO5tDdR/QQ6Vg58uhk8vypagFW9iz/ZqbPRjht
         OABBv/wTUKYrYy6R5oLVu0CWDrg+zjRZ0pwFF3z0EX82d4oW84yGb/rPiKvXo75NiR3v
         a9W7ax0a85pE4ys5ZkiV06NcUvy3Yti7LOy92FPfyEdTLZtNXYMEnazXUA2HVH+ETFb0
         Uox1SJYIM5SVmKGOdmUG1UJ9T4YWHGgsu7w7mfck25IQpGPfcwFrYbRLplXON5PIfpY2
         EGtKffAzWF6Q7eyYsqQec+YciEUaNbg9GElXPxe8twpA2V/blNam6PnrVEgfkdiIEdOR
         IoPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0HcJdBxWGaFUKbYBP+6BwkgnN7wmoSZSkr6WKxF6Lv8=;
        b=WAYFobn0xvZH5GAt83FaNI3DiqD1/LgrHjrLDr56ooLQyIE7xyLwDIu3orvUHxx0w2
         FoLN1MJfUpOTgSLo+GaJ5+hji5nDFdG/rGEZGi6ANlobq/dHPvjptfyRuwi4lmx0pHCq
         bDKan6Rt69+jTL9FsuY9S9GrJuUi/iJXC5bxNPyxf9+ThoMS6ManDzaiRcwTfQvUZXil
         wSkaQzEauxN+RM/NI6kpCQTcfmUzCVJCXhqBG2m1Fo9nnIJH8L6vDwxCxXj+H5Q0eWJe
         YYotma1399Zy/nVaLXSm9E3RKlQpQAgylqocVxKP8ibwc86W/89ehYRTYwMwqJCrnFgN
         eY7Q==
X-Gm-Message-State: AOAM5331NAf/TijdZQtZTCl8Hi47SbUjDfb9NiO/eeWyeNMEtitp0i8t
        6oEyLbK2Yb5dm9luY4UbyJGkHizr27E=
X-Google-Smtp-Source: ABdhPJz16jVhf8tKfv0VOFAeTuaftb5Ge/ysPzL5HeT8v5Bb3ZZCDSAHiGjmftMhriD1+NYwYtNccw==
X-Received: by 2002:a63:2a49:: with SMTP id q70mr3006065pgq.401.1644618208355;
        Fri, 11 Feb 2022 14:23:28 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id k14sm28571452pff.25.2022.02.11.14.23.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 14:23:27 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Richard Schleich <rs@noreya.tech>, robh+dt@kernel.org,
        nsaenz@kernel.org, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: bcm2711: Fix comment
Date:   Fri, 11 Feb 2022 14:23:26 -0800
Message-Id: <20220211222326.1144489-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220205195802.52449-1-rs@noreya.tech>
References: <20220205195802.52449-1-rs@noreya.tech>
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

On Sat,  5 Feb 2022 20:58:02 +0100, Richard Schleich <rs@noreya.tech> wrote:
> No functional change.
> 
> Signed-off-by: Richard Schleich <rs@noreya.tech>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
