Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1756F40857D
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 09:40:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237568AbhIMHmH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 03:42:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237682AbhIMHlr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 03:41:47 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BCC3C061574
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 00:40:31 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id i3so5899782wmq.3
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 00:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=n04uv+5XZibLMvnKtKrfRDH3+weTdkw09nbWu1hNmlc=;
        b=wsgAb4G/K5UxMew/W56NQo+1LNvjCkVxwU1V0ZhcSZ+rvNxwJSWx4m1pz6x4hGrQxK
         Gyj7rBJSe28d6HN8IxzDHci3Xyl9W9zQg6izgeR41kn42D7y+3iloWNqLIft86cNRauT
         wIVfLtr3XhvdN7VOnIxFzDg07AqfI4lUq8oGoZfuKlzYAeN7WzP3mlu32SPLAGcza3oN
         ogKOXBq2JI4PBXgIexfUrNK8nxaDjAZTXbB1CDT6hE6z70klluLir6OH/m9OlcCmpq5+
         8jgudv8U8/6DUmNfh17UpEFfsa0Bb5YXRe9Wxqy8I41Xyw4e69vMDF0Y7numKAg7Bp6k
         ycUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=n04uv+5XZibLMvnKtKrfRDH3+weTdkw09nbWu1hNmlc=;
        b=2WxX+Fs3FiekJ7z655RSLVbQBgYayUYRTovr0e5ZmYoLgnhhrvN8tiei+D11oCJe2g
         lFf4ICTGd/MWEv7zuEfBRkzBZHC9O9TNMWodgFB3NPIfNJdAGZhKveIEptDCtaERmGaB
         Bpg0lAU+WQnXop+ZX1mQ6xySZfud1PYVjBEkJHZ2v+ybHHZBdYU/IovXHfVpxDX3k7CA
         WVOo395L23Syw6MRBb0/ciOwdxKILVE0yr8YA+hvFqnZyJzeO7SsJ2hrAPaPjAw2mqaF
         PDE0KAawVycXvGaJG64FJLNAYNtiCtnLjmNybMDhC5Pn6QjAOW3xxwYGvJvWL9O4Vlmy
         CmJQ==
X-Gm-Message-State: AOAM532RGbp7QqrElW8D13NDLZklJI2AClJcXLxEmNHjme2Eb9s/sVHq
        bpdz+WuGFTS9qzfZxEW9q7WcmA==
X-Google-Smtp-Source: ABdhPJzouOaDRn0i2zebwvu9kOCOJAUKxzokE2T0UQsD8Z69uqJJWRN+U39Khmzjr07F+SzXqNlopg==
X-Received: by 2002:a05:600c:1550:: with SMTP id f16mr9970372wmg.111.1631518829984;
        Mon, 13 Sep 2021 00:40:29 -0700 (PDT)
Received: from localhost.localdomain ([2001:861:44c0:66c0:9ebe:26f1:5acc:c894])
        by smtp.gmail.com with ESMTPSA id y1sm6315828wmq.43.2021.09.13.00.40.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Sep 2021 00:40:29 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     linux-amlogic@lists.infradead.org,
        Christian Hewitt <christianshewitt@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        linux-kernel@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] soc: amlogic: meson-gx-socinfo: Add S905Y2 ID for Radxa Zero
Date:   Mon, 13 Sep 2021 09:40:30 +0200
Message-Id: <163151878415.815936.12618295918725996638.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210820012718.10761-1-christianshewitt@gmail.com>
References: <20210820012718.10761-1-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, 20 Aug 2021 01:27:18 +0000, Christian Hewitt wrote:
> Add the SOC ID for the S905Y2 used in the Radxa Zero. Before/After:
> 
> [    0.321650] soc soc0: Amlogic Meson G12A (Unknown) Revision 28:b (30:2) Detected
> [    0.318533] soc soc0: Amlogic Meson G12A (S905Y2) Revision 28:b (30:2) Detected

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v5.16/dt64)

[1/1] soc: amlogic: meson-gx-socinfo: Add S905Y2 ID for Radxa Zero
      https://git.kernel.org/amlogic/c/ca8d1fda5b7d2f81ba9c5649462a7c0b64ae9dcd

-- 
Neil
