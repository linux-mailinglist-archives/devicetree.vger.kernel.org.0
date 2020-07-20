Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3D44227246
	for <lists+devicetree@lfdr.de>; Tue, 21 Jul 2020 00:24:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728072AbgGTWYI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jul 2020 18:24:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727038AbgGTWYG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jul 2020 18:24:06 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8241AC061794
        for <devicetree@vger.kernel.org>; Mon, 20 Jul 2020 15:24:06 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id 88so9032109wrh.3
        for <devicetree@vger.kernel.org>; Mon, 20 Jul 2020 15:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=h/iiGE/hMDHwo1jMRtAjhSPPyBiqm3USAufgg0bvzlA=;
        b=rCeOpittQdYPYWCf6wlX+oHYRzPRTkTJhX1U6fWNKWkX4ANROneKyoy68EKrZIn4jX
         blMBSkuOmxef6fQhYQ99Kwrb9HSLILNxN7kI7N2nG90ibGgKs+ktVc2JhLCXhIsIIAyf
         ZuQE8JLHWZDvwfyuT279I6XGAqA5WbsXz62oxHHh0w3ntl9yCsmh5e/0Px4tNC6NLXx+
         4cvCgN/SDSR3x2o9NkttFcwYRmb9+P13kMSs7kjRIrfSuimk5+63ag7kvvfvizvAMmFF
         2VcVuEqgaGUt3wmrc6PxD0KaeABfdaamdDw+/oeu30je2546HZKLysQFjyaLrD7rhI+j
         ORvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=h/iiGE/hMDHwo1jMRtAjhSPPyBiqm3USAufgg0bvzlA=;
        b=U+jeYyXcYyfup9S0UCJpX5FU4alJxNYoZ6niADyGMyqPMIEYMu6P1D2Ao4sdIOv6+h
         ms/ynlQLMtGtG1MekoBxVT6vLnSp1bqH0NDWdITOm6vxoQT4DSSEjnzWUKEdbaWAvw56
         WrbKsYPRdUTn0TdYWTD5L8Vv6XK1x0zWyHhmdfiQXFsKNMMNFPp7crZc/e5ZlI+8T0sF
         QgquotAsiaN62wqAdoKZZJzG/pvuyuayHl9dP/tYN+g5U8Y5YWuEn2JUXHhyfj/my2Q3
         DqVLdV6xcds04rwLzqV3e1U71qZpZwVijMWzBNXDqyLR65YAtaen6OWqIKPX43Ku/k6/
         CIwA==
X-Gm-Message-State: AOAM530Npf+QLPbz12QBnPvh1NJHOXXxjfzN6a3Kzir93hbtF3ZGU2WX
        4n1Dh2W75XT9ueFXguBQmEBDlQ==
X-Google-Smtp-Source: ABdhPJxOqcn9joaabrwtIlsBoWejqjHNRkfkhbpEwfhZXef4rnzEUWmKjXGUKtqWnxuyo80g7c7+Nw==
X-Received: by 2002:a5d:6a8b:: with SMTP id s11mr2034828wru.222.1595283845126;
        Mon, 20 Jul 2020 15:24:05 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id c194sm1129294wme.8.2020.07.20.15.24.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 15:24:04 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH] arm64: dts: meson: misc fixups for w400 dtsi
In-Reply-To: <20200718052950.3707-1-christianshewitt@gmail.com>
References: <20200718052950.3707-1-christianshewitt@gmail.com>
Date:   Mon, 20 Jul 2020 15:24:01 -0700
Message-ID: <7hd04pakqm.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> Current devices using the W400 dtsi show mmc tuning errors:
>
> [12483.917391] mmc0: tuning execution failed: -5
> [30535.551221] mmc0: tuning execution failed: -5
> [35359.953671] mmc0: tuning execution failed: -5
> [35561.875332] mmc0: tuning execution failed: -5
> [61733.348709] mmc0: tuning execution failed: -5
>
> Removing "sd-uhs-sdr50" from the SDIO node prevents this. We also add
> keep-power-in-suspend to the SDIO node and fix an indentation.
>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>

This could use a Fixes tag so it can be backported to stable

Kevin
