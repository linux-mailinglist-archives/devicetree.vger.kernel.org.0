Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 103141E5F9
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 02:16:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726803AbfEOAQg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 20:16:36 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:38473 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726727AbfEOAQf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 20:16:35 -0400
Received: by mail-pf1-f194.google.com with SMTP id b76so357245pfb.5
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 17:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=0Ng7RtwdZZGuEsOpcg/j6BSGX6h3Rm/jbhnAJUw5oaE=;
        b=CQMSu4AsDA4jTq/54A4Tfxoci760WoknUl8ChC2k38YH7PvZ8OdcZ+iO6irmFfaY1x
         JBW6jiuQspi5NKeF0VXIZYfFbjWBDiLdW4XsozqCn9NXmtHTKqjKeZ6xYHlkozvArdvC
         auOtVUnxxgcko7dyxSUJNG/8/rQQBm+O6olu9tEkCgzY3KAmiLe97DsxqQxEnl+v4CIe
         xfwNQ6MfSETkvvm3woIMq9IDxGtD6k2JJ/mAfkFj32c8YOQrPuGu4g9j2SXVsTrrL8we
         dkcIWgqRZGYw1mcAIN4fxwdSI4pz7T81KWtUp0JNdfE9Sqvao1OQYElpARhaU9qjzjgb
         /qtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=0Ng7RtwdZZGuEsOpcg/j6BSGX6h3Rm/jbhnAJUw5oaE=;
        b=qvYpb83F9cmoGroKTOIg82LQuiVw8AzfLa0tPJQr4Q2I6kKOzbW1mJjaIvssQJ+1b/
         Zx3qrK75YUzbjS5S0+qyGyu5zgb30qgLGemjZXmo+RQ1U6mp+IScFaZbOa6CC/sMlWpt
         RjKtPslRPUnG/jZh85aGWPCLAaYCdQhKn/G0uTjKbPSYjs8sjiLVCu4IH2WGiLoQP4d6
         FZhW/4sNs1q0lIEtagMyBzlIBIg/i/SSpOvwtx/Ar1PZ/k3H3mFlZ2cLKLyRVK2XpUfe
         LU5M1Zy+8CZo4QDF5zQUXu4CYE84qow/fCGKk4XIuSaFy444HkiLun7hR2/e/NVoTSMZ
         mQxg==
X-Gm-Message-State: APjAAAWh9HzjSoxV14/Vq7uSco9gL18A9MngmfwliC5LQlvO+UK3kogv
        MeiOKc1bWig7WHeUgqTkksZ25g==
X-Google-Smtp-Source: APXvYqzFwnBn+sqOHE9J+Ttd7yMS5W9SdOmBxM99N/CXH4wDHfqTN8F/beBTCzSL6fy1kvBb2ikf7Q==
X-Received: by 2002:a62:7610:: with SMTP id r16mr43793256pfc.69.1557879395077;
        Tue, 14 May 2019 17:16:35 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:fd66:a9bc:7c2c:636a])
        by smtp.googlemail.com with ESMTPSA id v6sm253690pgk.77.2019.05.14.17.16.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 May 2019 17:16:33 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson: nanopi k2: add sd DDR50
In-Reply-To: <20190513130507.22533-1-jbrunet@baylibre.com>
References: <20190513130507.22533-1-jbrunet@baylibre.com>
Date:   Tue, 14 May 2019 17:16:33 -0700
Message-ID: <7hk1esd126.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> Add UHS ddr50 mode to the nanopi k2
>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>

Queued for v5.3,

Thanks,

Kevin
