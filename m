Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0688450165
	for <lists+devicetree@lfdr.de>; Mon, 15 Nov 2021 10:29:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236481AbhKOJci (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 04:32:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237383AbhKOJc1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Nov 2021 04:32:27 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04028C061746
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 01:29:11 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id s13so29345951wrb.3
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 01:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X/lC6w2Sm6M3V/VU6cEa1IPIQkx7PbctHYi9JVN8V/Q=;
        b=6gn5y7agH0Ie2+BoSZwvGJZJaqWb9lpHm16ZHqkWu0PDWzGzeSrE0JW71eDPb9VPPJ
         UYFPilnQWQnOmcby0gj4g4F2zzQv0p40pLyWkfuy4vDMdEWYreGyg4aFLA2XYbXkpICC
         d/nZYAKWnAV9cZ+CDL06KgQpfPuUVpyvS7qz05Bw2DWEzdNSWKYVR3jAbU8S2VXBukPT
         ZcWP12P8WsutgVamF/8efqt5LTKWdOB230s4//ZHA55ApWAEaNXEIG7nKAnQkG5OVllQ
         GLo++D8P7MyArtVn/6joGK/5yiaTICEedxr09p2TW26+C4CDAganhVR8DNRoAn+cVtvV
         2bpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X/lC6w2Sm6M3V/VU6cEa1IPIQkx7PbctHYi9JVN8V/Q=;
        b=k5QGwlUvGzBca46d7N1FnbErWDmrOW1rAnsSxcReuJYNaE0qLmioFDkl4mea35NcJO
         ctCcVIutsODIafz2f8EyBqdL63ZGaVmcfnAcdVcgUKARA0rn+NX4+zXxV4fK+5Q2Pbsk
         XW/dGg0KuVgBA8ZBATfUGic2QAbIGMRor4mc5fH80hsOIlKE12TTu1CVcfi/wkHHFFco
         PY8Hin2I+Y6dpS08gLyhr/pagU85+0emqjdISI/11ylIWuYJHHSyhPG5Ace6gOuGTqhF
         HvclH2kwGarKy1AHDg1qoTXnwTbakpatkboFIxNkBx3pkIseyMP+KUcTtmiHzYmFIAxL
         VNjQ==
X-Gm-Message-State: AOAM5317GJ3ElJLUrWi9/jJ6yiggXEQWqDOk6spCeZsK3BrbxXRW5LKe
        8b3e8jgVdBwnkBIg8KyiYGUlvA==
X-Google-Smtp-Source: ABdhPJyQ2Ekj5vfhzTEk7IggWtzywSx7V3NQsnNIAPgWAj0YdZH2xVxmM9nim6HNiT9IbxNBhy4NVw==
X-Received: by 2002:adf:df89:: with SMTP id z9mr44818162wrl.336.1636968549558;
        Mon, 15 Nov 2021 01:29:09 -0800 (PST)
Received: from localhost.localdomain ([2001:861:44c0:66c0:f56f:2409:301:93ad])
        by smtp.gmail.com with ESMTPSA id u2sm15871407wrs.17.2021.11.15.01.29.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 01:29:09 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Alexander Stein <alexander.stein@mailbox.org>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/3] arm64: dts: amlogic: meson-g12: Fix thermal-zones indent
Date:   Mon, 15 Nov 2021 10:29:03 +0100
Message-Id: <163696851316.448838.7095083388560027600.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026182813.900775-1-alexander.stein@mailbox.org>
References: <20211026182813.900775-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, 26 Oct 2021 20:28:11 +0200, Alexander Stein wrote:
> This node is currently at /soc/thermal-zones, but the later introduced
> bindings in commit 1202a442a31f ("dt-bindings: thermal: Add yaml bindings
> for thermal zones") put this at /thermal-zones.
> Fix dtb_check warning by moving the thermal-zones node to /
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v5.17/dt64)

[1/3] arm64: dts: amlogic: meson-g12: Fix thermal-zones indent
      https://git.kernel.org/amlogic/c/cdc5091694595606f0e38d651135d5d67fd397d0
[2/3] arm64: dts: amlogic: meson-g12: Fix GPU operating point table node name
      https://git.kernel.org/amlogic/c/bb98a6fd0b0e227cefb2ba91cea2b55455f203b7
[3/3] arm64: dts: amlogic: Fix SPI NOR flash node name for ODROID N2/N2+
      https://git.kernel.org/amlogic/c/95d35256b564aca33fb661eac77dc94bfcffc8df

-- 
Neil
