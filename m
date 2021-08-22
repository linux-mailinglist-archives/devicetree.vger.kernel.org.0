Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 075383F4123
	for <lists+devicetree@lfdr.de>; Sun, 22 Aug 2021 21:15:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232261AbhHVTPw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Aug 2021 15:15:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229843AbhHVTPw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Aug 2021 15:15:52 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE786C061575
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 12:15:10 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id bo18so10636797pjb.0
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 12:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3gPGVNnptWZu7VGZA7Ybp0tHyFzfM5d+0/gJFSaLM5U=;
        b=NL4tJoRZ5gOJr8IKIKHY7VRP8wKFLOyaE8LivaFCORsL+GV4DBCb9jo2Y8oG9DvFDA
         qVsYDrkd1q5DAMEKwBDoYIeSYlv+qIGYWcTNYexVGw+2BcB5TcYNvOGGYIc64iTbgTlQ
         r8zDE59OqA7AwAnA8K4SPlyGO2i4t8b1R0anin7LiWfuOvrSjVH2G5zg79uSXIHrjPEE
         SMSs6hUACR87YbmLKqzMtAxyj6i46PJD57hP0scFsCpRH4Ze616+hO7ZL1EtEUttQ8oA
         MMmxM+UTAIcIaPM03YMDK44jOl8VE5MykjC7E3Z/VXTq5zQOFRWzWG3X93SbZ23chLUu
         a4wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3gPGVNnptWZu7VGZA7Ybp0tHyFzfM5d+0/gJFSaLM5U=;
        b=KFce353bKH+58KMMjaPShcZa+F29RDNaJXDO92QEXzfKK1QVoIIm0nMOIRHY3u+w0a
         80VPSERpUQZzvhWrmY/7RxkCeHYQzVtpVy1XFWWRChWCIxyz2kxBlVURwgzor9aZ7jMn
         a4GOMsvAT1TOncD6Sbm4TbuGWmA8o4s0c55XDj57b91kt1PUzMtP/ISK/676cdvydTSV
         Gfk/nUBPnN94ss00gYGrIlBvYZSXw+Zzt1JMYnM9Q4hub3+0B2heW0ohqeTOLaWypR/v
         om/4t1C2xyPM/vWrhw7Bf0faHcsfqnCRI+N7Fh5G1W9X0SmqrwGlMg2T3flGiqNXN/Mx
         oIjg==
X-Gm-Message-State: AOAM531DAbz42qySML2baxZ0zLulhtbsNovCEHnL3Tuca/PIalDZzYbS
        Q9YsOYNy+87IwGvp5+RnZCk=
X-Google-Smtp-Source: ABdhPJzJotGHdi5D6NWcHy8kIpXMdaH7JQAWYqEnguAJ+I2x2XLeRDf0G02RYLTlpgcvV4crKqWwlw==
X-Received: by 2002:a17:90b:3442:: with SMTP id lj2mr15737412pjb.81.1629659710565;
        Sun, 22 Aug 2021 12:15:10 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id j2sm13028262pfe.201.2021.08.22.12.15.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 12:15:10 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4908: Fix UART clock name
Date:   Sun, 22 Aug 2021 12:15:03 -0700
Message-Id: <20210822191503.3715661-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819153702.24394-1-zajec5@gmail.com>
References: <20210819153702.24394-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 Aug 2021 17:37:02 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> According to the binding the correct clock name is "refclk".
> 
> Fixes: 2961f69f151c ("arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300 early DTS files")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian
