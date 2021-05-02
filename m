Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F755370DB2
	for <lists+devicetree@lfdr.de>; Sun,  2 May 2021 17:51:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231788AbhEBPwK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 May 2021 11:52:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230110AbhEBPwJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 May 2021 11:52:09 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 621BDC06174A
        for <devicetree@vger.kernel.org>; Sun,  2 May 2021 08:51:18 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id t4so721106plc.6
        for <devicetree@vger.kernel.org>; Sun, 02 May 2021 08:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cSay7VAnuVoTQf4HRsm5DPsqF2lYvbfjR5PsryNs56w=;
        b=LaTAwje1uZvSIXBhhvq2g0bXiFTwQr3HmIvZrLBQEWASB03g9hgX9I3t922gyZH31L
         1KJpsrGi2jcmfw+QRm2snAXUKu4SHZV4hLP2XVz4Ayb4FhVu9csRmY/e+WEfgDX6dtPF
         YK14pR3qTRTJpChy2lSTD8YHFMZqm3YMEbZx6oxnfHNLebJpGI/Omz29gpRw9CyefNPJ
         m4vv3SJMVjwk+MiF9ZkBq0IIbWzgJCtcxkeS0JZBXuha3edBcsjM3JZjf2tnrGiwDHTg
         tNcR9nBiUHZGgzd5+XJzBKA+dqTYvywE5hQK2jsHfY8imQ8t6tphSTAALHfVZXcSeWNx
         ONkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cSay7VAnuVoTQf4HRsm5DPsqF2lYvbfjR5PsryNs56w=;
        b=nuFFg5jc4QRYC2NeueEWsh6at5bbN4NAEBFOelTaEJiVFBXwM/Ilnzn1tfkjMri0cc
         2To6q8fwX/MnO+qb/oSqfmz42GKzn70ZRzhzCYUmMjZDQpZkIpXHMfFmUjQT6OYSDZN7
         xKxXF4LXAKAg+883+dJmiIpd7BPDGeu3DYiS5xGYBJDT1MuWnPiO1yVf/NvHjFP2E5xL
         KL+WV2BEU04o4nS+e79TS4rY5fhtc4n+ntD9xqaVd9chP3fC9210DCBIbGl0AukbawJI
         g2T3d5Dx9G2rbbVSaSkrcSRoNsypeoNBIRV4KUqCJZ3wXM80rleP27jG9FGFmVlGbs3g
         qKVA==
X-Gm-Message-State: AOAM53275mqGX2aeUbpgk7N1v0nlycDAQe6sI3Dm+xYcDVj5lej59Ldl
        cXj/Cc2Akf8KUBV7L9oeErk=
X-Google-Smtp-Source: ABdhPJzQoskAAW90QQlJG/9Boe1/SVNt1cm4AtwLX9p1mbEohw2TkZX65wqdHtHLLNEVZudGygifJA==
X-Received: by 2002:a17:90a:4b0e:: with SMTP id g14mr14185643pjh.48.1619970677696;
        Sun, 02 May 2021 08:51:17 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id k12sm3758387pfc.218.2021.05.02.08.51.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 08:51:16 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Hauke Mehrtens <hauke@hauke-m.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH stblinux 1/6] ARM: dts: BCM5301X: Fix NAND nodes names
Date:   Sun,  2 May 2021 08:51:15 -0700
Message-Id: <20210502155115.945166-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210416133753.32756-1-zajec5@gmail.com>
References: <20210416133753.32756-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 16 Apr 2021 15:37:48 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This matches nand-controller.yaml requirements.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree/next, thanks!
--
Florian
