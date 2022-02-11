Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 699994B3062
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 23:26:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231603AbiBKW0I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 17:26:08 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:59496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242658AbiBKW0G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 17:26:06 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D0FCD4C
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 14:26:04 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id y9so9299842pjf.1
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 14:26:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QlnTIPIX8ulI+oIbkPTbIDnNJ0QASafg1hmQGA2cB/M=;
        b=KA6N5hOXe7C87TRYPQAqwmHPjLEO2SDC3QtE2ybv9DQqAQaw0E4eQ9rMecQxhQAxkL
         zdG8KnKZBA4DZq3Yar2xvRzFy6eDyoHwu1tCMBzcB6m+QYGgmEU8ex5XiGzesWVlpVLB
         oIPQvNnXj5wb/zv/QxyCYAxI94YX3f2x/McMloosPv7uJrlSZ/15PdDN5n0ig58RURqM
         Mdb4g969QLwzKcmHwxDZ3yjWK+ViS2EPHSfYqIoWHqs6mz+D/rzCTBdZIFDOLDpw91pr
         sa7+TI5SA42+0keE3mVRqQM+30P16qBQz9TwVIG/Oj8W5CEtYfG/WwZ0mwtRc2w+h3Us
         Mlvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QlnTIPIX8ulI+oIbkPTbIDnNJ0QASafg1hmQGA2cB/M=;
        b=wwk3DRgXFuFkV0E3UQAZcITOwhPSLObuTp7aw45GoBlTVR7NKmiwk7OatFBD/rO9Ep
         cgA1NBx4nczm7UHTKuLZWp370inD1U6QfjfKF4kMDQuNTiyBLmh9AsZdlzwTzLDYuk1t
         IQ/FfLl/rabKhFnPe7PpMtTwIC4bO/rGfjH3N8mUvaI/KJe+M07pnQxx3PmdyNBuhw7Y
         M/l3zKOQqILjoQMcZoI59FBieSYTm8gLDYTtuGM8QoaJFdHAm8L+8bpjPDS2IXlIj2kG
         2qyZZkXDvAh+2NVO21ljbA411gx/CdpeAR6b6OFWkZY414XkBzLm7+L1Emlg28h3pG+G
         0lRA==
X-Gm-Message-State: AOAM532D/sfX+Rp8LVT0w1PjR8xUUMGPC4TO8Cm8AendJO9kI5Z3oPnG
        wY2fa3SoRAGY4A8QBD149nY=
X-Google-Smtp-Source: ABdhPJzd4zONhOYphguoQeAx2DVh1hnBfGAmITtACb2O5xS8MBMn1Hlnai/+fAZnY0VPGlfytPkzBQ==
X-Received: by 2002:a17:90b:1bc6:: with SMTP id oa6mr2504543pjb.127.1644618363767;
        Fri, 11 Feb 2022 14:26:03 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id b14sm28483933pfm.17.2022.02.11.14.26.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 14:26:03 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4908: add watchdog block
Date:   Fri, 11 Feb 2022 14:26:01 -0800
Message-Id: <20220211222601.1145520-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220209201417.25264-1-zajec5@gmail.com>
References: <20220209201417.25264-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

On Wed,  9 Feb 2022 21:14:17 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM4908 has the same watchdog as BCM63xx devices. Use "brcm,bcm6345-wdt"
> binding which matches the first SoC with that block.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian
