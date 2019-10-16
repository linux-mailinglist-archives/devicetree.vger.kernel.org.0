Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 14E30D97B1
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 18:42:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406426AbfJPQmy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 12:42:54 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:38700 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389763AbfJPQmx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 12:42:53 -0400
Received: by mail-pl1-f194.google.com with SMTP id w8so11520298plq.5
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 09:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=57uyxmoXhyIZG8+XPLz4fjpdkC+Q+fEOX17k+/hG6tY=;
        b=rUVvtmAdciiJfC7zc4iHMpw0uFh5wPbykASFgtkhhw4m6QvnfcyqH34IwbX3rt2paY
         S5eDisYcUokzkMN0ZlmKCeGbkDuF9ZpAO+PqcB9/zZacqIJvpbgiEQZKMVUEVyA5zNlz
         dkXXvQ867OpBmcb0Txd1GiCGy3r8/dK57xR4mNDDpRLHNaO0SM81tF4UH5eF5Kx8uQUY
         5E9cNIQMD0zJdPtVFt7+OEY2+ZJCDurQ07h3cRCzwpA59yudNtwCCW7htiobEkO5+sKy
         BY5woMUym4gpM5RN5h0C6g9T/oPCjR13uI5ktka4HojeQajPoJZHgLzDzzCLXmqZOtw9
         12jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=57uyxmoXhyIZG8+XPLz4fjpdkC+Q+fEOX17k+/hG6tY=;
        b=I5eYGvcwZrVQ1qAVgBzav/UyDjt4+f1B/XyH+o0h3nfItFMYVYtdD1q+iX0Jk53DSK
         E7qnzDTytopRoGanTDCfw0G/kX7AY95MpFGAGbyqHggyKMMvfc/m28A8Kt9HShr/jH78
         0tmwXxR9tfGB8oIn2ESJOa94eQsmzj5P76rY5dBr5cWAKyshlRWy8tyw115OrN4SjklG
         eOpnRF/ESIE59JQ/vJRNVPrvvfgqD5sBd1OikcksamagAKy+zI2R7pxbJ82ihEcZyAXH
         vZXjXDKOvpvrQFVs3EXJE2GM94p19g8Waf/pthzzONFoi/iS124sdddgoaiC4fH+GplG
         UKAw==
X-Gm-Message-State: APjAAAUyjMhsTGDNvyy7ngs9CVUUuax5EnxSF0AmsxmESUyP5sDgtRlB
        syl8HgiJWRI0vzM0Dg4QpzG11g==
X-Google-Smtp-Source: APXvYqzYGefqM+N97RnNolUGlVbbJgqvYENkUacnJagIFtdqHenQ0FP2dvlvfgAmmN8wCkoVChDPiQ==
X-Received: by 2002:a17:902:8505:: with SMTP id bj5mr6102750plb.31.1571244171732;
        Wed, 16 Oct 2019 09:42:51 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id n23sm23363431pff.137.2019.10.16.09.42.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 16 Oct 2019 09:42:51 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Guillaume La Roque <glaroque@baylibre.com>,
        amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
        daniel.lezcano@linaro.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v7 4/7] arm64: dts: meson: g12: Add minimal thermal zone
In-Reply-To: <20191004090114.30694-5-glaroque@baylibre.com>
References: <20191004090114.30694-1-glaroque@baylibre.com> <20191004090114.30694-5-glaroque@baylibre.com>
Date:   Wed, 16 Oct 2019 09:42:50 -0700
Message-ID: <7hsgnsfxpx.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Guillaume La Roque <glaroque@baylibre.com> writes:

> Add minimal thermal zone for two temperature sensor
> One is located close to the DDR and the other one is
> located close to the PLLs (between the CPU and GPU)

nit: subject should be "arm64: dts: amlogic" (not meson).

I fixed it up when applying,

Kevin
