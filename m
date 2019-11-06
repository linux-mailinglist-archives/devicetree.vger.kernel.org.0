Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A2E89F1E3F
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2019 20:09:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727957AbfKFTJt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Nov 2019 14:09:49 -0500
Received: from mail-wm1-f68.google.com ([209.85.128.68]:50414 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727169AbfKFTJs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Nov 2019 14:09:48 -0500
Received: by mail-wm1-f68.google.com with SMTP id 11so5100221wmk.0
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2019 11:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=98bdaefMMvLZQIHTqFywF3ip5/YAIodCEvGFdU9Er/M=;
        b=Y9XhwrmbWLORhZlwLUkLchMbGrptmOACK9FnrfpdNSRNFuazWNMXmChIwpD58f2jVr
         N/t9585V/7Ltdbbw3aKeEBJoE4Aw7fiagtcD6Vlwi04FalagvHT+fU7MlceZUwoAK04m
         6D8/u1hOAzzIIP6M5PcyZTalMOc8T6LL5PU+S+fSUHA69SZQB0Zjdcmy0klhxzugPmHj
         1b/qOZ02Wl7pan4CwBkE0Pj+rPBiUw9CvltBdTK5QnPib8MjMqp5DbSSxNI3/NYv9+H5
         O4nW1nxH/8euZ71BcJibTC9CWivgFfvXAvjQF4vyMfHsh4/IMjHutpqNIdqKh5P2EMqb
         Um6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=98bdaefMMvLZQIHTqFywF3ip5/YAIodCEvGFdU9Er/M=;
        b=aQy6naDSPnHsmZVQUMMG7fnFooV1LezQ2qEeawONCKOuu61rdUstOxpRW+/qMfgiIM
         c4ZU96IUslV0u+0ou8Ml5VIS7kVj5Mnr2kBhAXJm+s0uGX6DlJ2l0qT72U5OVkBjEgUw
         yfxySD0V4rdgJwdfZGYPav97FkZ3PqQaz+RW3/roC7hlx7zUWTUhostcn4zvsqV8iN4H
         0kW4z6qHhrLh78gZHUddyMUqQH/aaaSXp6d/plg5kZjpV9Kz1WPDno1sZLMmrxLtsScj
         1P6hNAyNjhUHIwt2RTt3Qy/hhaKPR5Ckg8xl9xuN+fgO03Hz2ihHZJfzkMnIkpKjNXMb
         ex4w==
X-Gm-Message-State: APjAAAVGE77Xo7uPhcFCmuaB0WIMj2nNq5P01L2HFzVcUIXPsYJwRTCK
        3gj9hX4MzAXGvHt2IkW7OkbGzA==
X-Google-Smtp-Source: APXvYqyCY1lln9b2iPCyHCKanV4eXIoEfn+QcpUfs/G9tRuieF5Y42EKu4s/16n4VkYDgpiAaqYiqA==
X-Received: by 2002:a1c:2344:: with SMTP id j65mr4213269wmj.38.1573067386601;
        Wed, 06 Nov 2019 11:09:46 -0800 (PST)
Received: from localhost (amontpellier-652-1-71-119.w109-210.abo.wanadoo.fr. [109.210.54.119])
        by smtp.gmail.com with ESMTPSA id j11sm20930039wrq.26.2019.11.06.11.09.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 06 Nov 2019 11:09:45 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH] arm64: dts: meson: khadas-vim3: move audio nodes to common dtsi
In-Reply-To: <1571416185-6449-1-git-send-email-christianshewitt@gmail.com>
References: <1571416185-6449-1-git-send-email-christianshewitt@gmail.com>
Date:   Wed, 06 Nov 2019 20:09:44 +0100
Message-ID: <7h4kzg7rev.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> Move VIM3 audio nodes to meson-khadas-vim3.dtsi to enable audio for all
> boards in the VIM3 family including VIM3L.
>
> This change depends on [1] being merged/applied first.
>
> [1] https://patchwork.kernel.org/patch/11198535/
>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>

Queued for v5.5, but...

> -&frddr_a {
> -        status = "okay";
> -};

This node doesn't exist upstream...

> -&frddr_b {
> -	status = "okay";
> -};
> -
> -&frddr_c {
> -	status = "okay";
> -};
> -

... and these two were present so were removed after manual fix of the
conflict.

Kevin
