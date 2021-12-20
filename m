Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8791047A902
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 12:51:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230130AbhLTLvi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 06:51:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230121AbhLTLvi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 06:51:38 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D56D8C061574
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 03:51:37 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id q16so19514898wrg.7
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 03:51:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=p/P+q/gtXvYn5lTOzvGHLt9UuDdXRspn+md2NvaF8tc=;
        b=EExu677ukA0Kz6xU+BMGFfOVjUK1XpgZ67XUjgD1pnfUdQOPcgb4bF+ZDGJYTKZlXe
         sGj5vNYbwSWwybJ6uaWOATILN+GFMjUZBFq8Sz5bplGnLQwYf9DSTAs2eR+kJ8VQ5sPH
         gSnNL6o/fsVxZSxpHu+gFpnLNy/mNTtn887BXgjdTKsi8tizvuPg45r7NkNBFkJnXWeC
         RExUSanWNrtVLlnA1jqxP8uto/oG6DNHfG0v9rQ2U6S0jrgXzxRLBhSfNis/lKBeM0I6
         uAevSHDsPzzDcAGLSnaVpora0Vr7UzwcbxYRGga5g6pbMlQmusGzThrctAph0imI3rLE
         fc1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p/P+q/gtXvYn5lTOzvGHLt9UuDdXRspn+md2NvaF8tc=;
        b=4SwUUfdR7AojLy8fdqfkgjAy4h/ciu+j7bFEhsxULmzTXfA0pfAVHRrhqMHBe0uT10
         StxamA9N0odGuldr23IGNeE9d37ZAAs3zRwQA6OQug8US10BYxPEDk/v0gLdloPaCZYM
         jhO8udBbIjcYb1O4Fcu4RTVnoJXMLdifwzZaRAqLEz3GQQPNtmr9S3a9BlYkvl6QMx9F
         pv6CKSxpL7RkI7XcaK55UkJ8Gmi+T0qQE7f1x+SS5l/RzymnN5JsUj4VR9a6dmSWXdwT
         I4pbcL9SfcG9ZExLqOlajzEh2oK+L1voOIIH2EtT+ITjfa7LzQag5s/86IzgjpH7SbaY
         KysA==
X-Gm-Message-State: AOAM532NvkN1ROxRqYsOPtdkFVIg3O3BKVbxWLZar1IqNuGYfhV8Jy9S
        YL9pNuaFhBRiY1INpue180w=
X-Google-Smtp-Source: ABdhPJwoEInEeH88GH83sFShjd3YXynMJnKwtGetH4cdE8mCT0mf3TOgz0/oQKBwWWGkli1YraLIhA==
X-Received: by 2002:adf:cc83:: with SMTP id p3mr12618669wrj.680.1640001096488;
        Mon, 20 Dec 2021 03:51:36 -0800 (PST)
Received: from archbook.localnet ([217.151.114.10])
        by smtp.gmail.com with ESMTPSA id o2sm14214116wru.109.2021.12.20.03.51.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 03:51:36 -0800 (PST)
From:   Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To:     dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v3 00/22] drm/rockchip: RK356x VOP2 support
Date:   Mon, 20 Dec 2021 12:51:34 +0100
Message-ID: <2075203.1SQL01OxuU@archbook>
In-Reply-To: <20211220110630.3521121-1-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Montag, 20. Dezember 2021 12:06:08 CET Sascha Hauer wrote:
> 
> Third round of patches and last one for this year. I hopefully integrated
> all review feedback. Additionally the driver is now fully converted to
> regmap, so no struct vop_reg necessary anymore.
> 
> Sascha
> 
> Changes since v2:
> - Add pin names to HDMI supply pin description
> - Add hclk support to HDMI driver
> - Dual license rockchip-vop2 binding, update binding
> - Add HDMI connector to board dts files
> - drop unnecessary gamma_lut registers from vop2
> - Update dclk_vop[012] clock handling, no longer hacks needed
> - Complete regmap conversion

Hi Sascha,

for future reference, you can add `-v 3` to your git format-patch
command line to mark the whole patch series as PATCH v3 and not
just the cover letter.

Thanks for your continued work on this,
Nicolas Frattaroli


