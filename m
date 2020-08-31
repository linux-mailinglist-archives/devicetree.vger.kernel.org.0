Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED93D257278
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 05:52:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726657AbgHaDwB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 23:52:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726573AbgHaDwA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Aug 2020 23:52:00 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74B07C061573
        for <devicetree@vger.kernel.org>; Sun, 30 Aug 2020 20:52:00 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id o20so981204pfp.11
        for <devicetree@vger.kernel.org>; Sun, 30 Aug 2020 20:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=CfugyM+91vqu6xYcWLhSglzQTO3ypDbdsELgG1k6e0w=;
        b=H6XNjOOl4LPIJ8SEhf16VpIC1u3Ua5LVS4igevO/4rD/jpPM+DXL6fo2CNK5XrIt9w
         f4/sSXD0NiTh7IWxgF8WGGN1DXRsNvMZFoxBE50Cx53kzfySdn+1Q7cXFOeF/glPqDnm
         BdvWjBDvx36Q5WHRjQsgXWtDy5Sbprwu/BsbrAX4syM+q83Pfc1cySPwnZmh3ap/eupL
         fUsVckSYa9qbqVS+QOPPO9LLXd4zGyW5SPO3c8WTwJ+KrrD19qPW2jznTVRwyqhhSOjU
         5ONLtK6oUS+Vyj3J1dZ0asP72qIAQHfnrBplt0Hm17qUhwyiOUiCDL40GCRclDslI3XW
         UJbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CfugyM+91vqu6xYcWLhSglzQTO3ypDbdsELgG1k6e0w=;
        b=UuS10GWwCOclDrRGvjR2vvYNnuillyYJ9PYoQbD8VW4SDnpPKVHVoBv7ZZjnoi92tv
         tMJbaKR4JPGtXzALompcHxjAQxw74mfif0YfMg+J6lxXEDxfh2bz99W7ks0rR7+YAanC
         pTXnbIyBVvy7V2nW7cKtK+q2rQ4ZrMJvJ39sUt7J9w3Zmch1fXdI24iWmlXuX6FgeVNI
         1MzQ3phz84g1Va0akub3Bgp16Dr53NCF2ImKfMRgERVOyyDBLL+1CRSmJAnsh3i8liP+
         +CgrU88qEw/QHWyB1CEdGbldtMhOEJ622K0nwpnRiGkiW6X5rOo872zZoOCLIAc9dzFL
         HqIw==
X-Gm-Message-State: AOAM530wuM9Q249bTUW7dEhEcyO//Cdt71danttxJbTpGrp9kMcrovpn
        hklLHNVcCRyYG0V6Y4HAMzU=
X-Google-Smtp-Source: ABdhPJzev38FxoUjPluO5RoMuZYKhiFhlivi6L2eeyaAxqM48pwXTAV4CZ/5ljqOV/brSH9yIIuX/A==
X-Received: by 2002:a62:1616:: with SMTP id 22mr7621605pfw.207.1598845920013;
        Sun, 30 Aug 2020 20:52:00 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id w66sm6461797pfb.126.2020.08.30.20.51.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Aug 2020 20:51:59 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Adrian Schmutzler <freifunk@adrianschmutzler.de>,
        Rob Herring <robh+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: broadcom: replace status value "ok" by "okay"
Date:   Sun, 30 Aug 2020 20:51:58 -0700
Message-Id: <20200831035158.1331925-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200830200333.1333-1-freifunk@adrianschmutzler.de>
References: <20200830200333.1333-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 30 Aug 2020 22:03:33 +0200, Adrian Schmutzler <freifunk@adrianschmutzler.de> wrote:
> While the DT parser recognizes "ok" as a valid value for the
> "status" property, it is actually mentioned nowhere. Use the
> proper value "okay" instead, as done in the majority of files
> already.
> 
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
