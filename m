Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 801CCBD267
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2019 21:10:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406400AbfIXTKH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Sep 2019 15:10:07 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:38803 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405389AbfIXTKH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Sep 2019 15:10:07 -0400
Received: by mail-pg1-f195.google.com with SMTP id x10so1819683pgi.5
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2019 12:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=ztDGYJ4coyv+LAVfttrEQdgcMXqg4Kriy9EN3YGCljM=;
        b=hc1sn9qIKaebOSz9we8ltrjhoIMvLleyAzfBIFg8oVbgZeB7q2cJhQXmas+QaBgGwa
         YJRVIUXVwHz9kWqcapUr6Ipz/YkKWU8bQ56QBM4F+kT616StfYzq1mHTTQyPKQI9C/CH
         8uIOTgdLeZ7flUAX/Rz6SL27oqnDGmx/pe4hErHmDDAFA1YrDPz2YjqgbGCLikM3f99P
         kjJjgMxmLwyYf32EXJ843imgVokwY/HHzSNj1ZtQfCz97/Pv8lgHx06XEEJm7xokK9zp
         LhIpX18Y/qNxzlhJckURdplDuevo97mSKW/ciISFXQeSuzmnXMs42TyHjyfxYIQU/dKy
         Z6dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=ztDGYJ4coyv+LAVfttrEQdgcMXqg4Kriy9EN3YGCljM=;
        b=Y6mM9hF201FdJGXDx/mnbVrf5RzX2HwU3StC5FxPK+ddRgi2FUD9TbowsJAhbsYK7K
         zHaA7QWNpIPT19NivqwjnrLgFID9j90UfRIZX0y6Vg/ul+0niZsWcDuP+bDCSYa6f+jc
         qtgjrZp7vGPRe4lMv6c3sBowFOr1t4T1fuJfciV4ZsZltwemgo5gD/MKblmsJ3uO+4Kt
         cpMeeXBSbJ3ixGGPIdwRauZc1eEvryzE2VjAqC2y9olrr3H/ovHytpglvRDrQMH3gl2I
         m20rgJJp2hUd6ooS/E2CZvP2qbrhmSr0kf9Cx7EKoJItEKJnVnaiIh+0ForF9xLighcE
         efjg==
X-Gm-Message-State: APjAAAVP1n19hdkA5cLg23xceh8UowFlp9qeAEw2mKY7qntOgHo9BRG5
        axJNPYesk76oWIve/7a8SQ9tgA==
X-Google-Smtp-Source: APXvYqya2nPu+2RWqeknPa0vJCecXJC5BrkFYN+q1VPzP0Et4zZGP3Bc2YytDsgp84YFrMCkeCvzpw==
X-Received: by 2002:a62:53c7:: with SMTP id h190mr5059698pfb.208.1569352206681;
        Tue, 24 Sep 2019 12:10:06 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id r28sm3261936pfg.62.2019.09.24.12.10.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 24 Sep 2019 12:10:05 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Frank Hartung <supervisedthinking@gmail.com>,
        Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH] arm64: dts: meson: Add capacity-dmips-mhz attributes to G12B
In-Reply-To: <1568429380-3231-1-git-send-email-christianshewitt@gmail.com>
References: <1568429380-3231-1-git-send-email-christianshewitt@gmail.com>
Date:   Tue, 24 Sep 2019 12:10:05 -0700
Message-ID: <7htv915x4i.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> From: Frank Hartung <supervisedthinking@gmail.com>
>
> From: Frank Hartung <supervisedthinking@gmail.com>

nit: duplicate From line.  Removed when applying.

> Meson G12B SoCs (S922X and A311D) are a big-little design where not all CPUs
> are equal; the A53s cores are weaker than the A72s.
>
> Include capacity-dmips-mhz properties to tell the OS there is a difference
> in processing capacity. The dmips values are based on similar submissions for
> other A53/A72 SoCs: HiSilicon 3660 [1] and Rockchip RK3399 [2].
>
> This change is particularly beneficial for use-cases like retro gaming where
> emulators often run on a single core. The OS now chooses an A72 core instead
> of an A53 core.
>
> [1] https://lore.kernel.org/patchwork/patch/862742/
> [2] https://patchwork.kernel.org/patch/10836577/
>
> Signed-off-by: Frank Hartung <supervisedthinking@gmail.com>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>

Queued for v5.5,

Thanks!

Kevin
