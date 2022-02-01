Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE34F4A6492
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 20:04:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242272AbiBATEb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 14:04:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242271AbiBATEb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 14:04:31 -0500
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 411E6C06173B
        for <devicetree@vger.kernel.org>; Tue,  1 Feb 2022 11:04:31 -0800 (PST)
Received: by mail-pj1-x1035.google.com with SMTP id l24-20020a17090aec1800b001b55738f633so2312366pjy.1
        for <devicetree@vger.kernel.org>; Tue, 01 Feb 2022 11:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=wIaENBg/7AsUHJDq4OgnIPqvHUp4Vts4+P8qgAxYW1s=;
        b=Y95dzwDrfydpWDBxj30R2ZccMBa6llxL8kVA34F+lHigePxpWyJM1muhJRfbeXA5Go
         0eKhAoQ5DrDBUxYRj46MLXMjhW9WDqWO27hhkKB2VbeNmYWnn9cZlLdSJaeqyf6SxhGT
         /LlkOBZ5N4r4rO0KCSZBCZnVLl8x14f9/mLfR8Kn+8/6hUl2mDVGUxiftpPgUsXYB2j/
         oXkjyEfIeIZ1UFp4r2Sm5StQhyJCU0JqxolSVYYoTW8lHIMWUj0In0Uk5kzWAPPF8orv
         RKz8F8zPEtTNamxib0Pz+00rphknQEOZBAIQtn9LxZUEQH6vC14znFQ61HUsIKVnG0PO
         9bHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=wIaENBg/7AsUHJDq4OgnIPqvHUp4Vts4+P8qgAxYW1s=;
        b=HYFCdNSR7Dp575keft2AXuYNJxy906/BkHO8SfjWvRAWWPtyNnHkno6fTwyHY8aU5r
         MJVhmlz9NfIzDfGzqCMpclyAKCskXnz32fiD37U1YD+rPJek8X3mbm5LDzfv1A9GanNK
         u+71KKKjhKgmK6FBhiiiaZJSHNmEmt9+6pHKJhoX9RzvF7XyQVZHd0feWV31sXEm+4WE
         XLO/IfckMP2q2oT/6SEh/XYWXwcNc6NBOrkUx07YIO1yCoMZMnORG75cHVl8Tw7fhHal
         54QTdWU9tzPNa4zpXDALxXkdvcXMRaOl6daQR8Fp1yx2lbU5LnWmokhsl5nroVOumg8g
         r/Yw==
X-Gm-Message-State: AOAM530DAvM46ScUhW0ZO2FB8RNoqiayes6o/h0Yj3IEP0YV9QN8VT8B
        +eYliyooX3f16QnDGmwAq2FGD4TeV/Pbig==
X-Google-Smtp-Source: ABdhPJygCi8b1yCmG8oqZZPB+iH/tseA+EFVP6QFMDH3+XAyTEM1OWhw4r4ydzfW6NVUYlCesgahMA==
X-Received: by 2002:a17:902:d2c3:: with SMTP id n3mr27222538plc.45.1643742270670;
        Tue, 01 Feb 2022 11:04:30 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id d32sm33229135pgb.46.2022.02.01.11.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Feb 2022 11:04:30 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH 0/3] arm64: dts: meson: add ATF BL32 reserved-memory
 regions
In-Reply-To: <20220126044954.19069-1-christianshewitt@gmail.com>
References: <20220126044954.19069-1-christianshewitt@gmail.com>
Date:   Tue, 01 Feb 2022 11:04:29 -0800
Message-ID: <7hr18m9znm.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> This series supersedes [0] which fixed a long-running kernel panic issue
> seen with Beelink G12B devices booted from Amlogic vendor firmware. The
> same issue exists with a wider set of devices from GXBB to SM1, although
> it is not often seen due to my kernel fork including 'catch-all' patches
> for some time (the meson-gx patch was suggested by Matheusz in 2019) and
> many distros actively supporting Amlogic hardware consuming some or all
> of my regular patchset.
>
> I've also included a cleanup to the SEI510/SEI610 board files. If that's
> not desirable feel free to ignore that patch. I also dropped the fixes
> tagging as I'm not sure what original commits could be targetted. If you
> think fixes are good please provide some guidance and I'll be happy to
> send a revised series.

Reviewed-by: Kevin Hilman <khilman@baylibre.com>
