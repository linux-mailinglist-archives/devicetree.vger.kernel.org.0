Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6809C82DAE
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 10:26:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730222AbfHFI0K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 04:26:10 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:39253 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730068AbfHFI0K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 04:26:10 -0400
Received: by mail-wm1-f68.google.com with SMTP id u25so65163647wmc.4
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 01:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=KH+v5LnQRlyduGM8b58Lyxa2U4G7pLkyKvhcbXDXdW8=;
        b=rFoP/2nyqEqnJmRE2Dyp+k9hDa8vpaJT00btn6o/ex1cZ1Zr8zuTV0WC73GVg+zQbl
         UkjulKvZg5qChzcBvO30LasRSgchUUcu4NqNTG0H49IpTPRXTXk9i7L6tMTMKRz28CBF
         HVjItjKReBotktlrh00D+84H4FXrpcxKIF6LwxrB0lK0E4Eo4ZC+epasRVt+3xt/K2vu
         Hy9XF273DKm4oJ8vQ4dTzzK3rWr9uy83qxoKiLA+Er4pIxstO0Fb57Wm835z+DAeTLJR
         MdAo5HdBySUqwg7jd0aVuJih33pTRz34nKbSrXNXVT52iR9xiSg4dG3bk4HfGAaw1W0j
         ooBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=KH+v5LnQRlyduGM8b58Lyxa2U4G7pLkyKvhcbXDXdW8=;
        b=ajykr6i65L95IlqVSRUCwtO9pJH8g/LwXvggbSR1tf5vysw6ZGYfkb9Bh4y6bP8mk/
         yt4yQKILbG7XMwuoOGBRK9TQfgZPlyOlPFD3GMUrsw9HoCKsn/Y3626MBLZzKEZRRTsS
         0IG13NclhSZzr3T0YSWsgIgSEnlmnpqiEzKaK1mQcVD9QEZnd7ezpkFSWOCn83xEZTuU
         GiEr/6nUMo5yT9uPaSZApMP434jbChU5mWmSlQop4bLnYL3qsiLDJ4NAjgO+PpsGtPKL
         zXks9uKybyYWweSxyRlYxe0pemRn9mnx17F7ousxhcwgMUR88YX9/b+YP91eZ1GUuOxZ
         7jcw==
X-Gm-Message-State: APjAAAU03E2r3jKY7qFA1UTkPuCJD6klh3sc1ST5kt0zsSfXU+OJNwfR
        O/Vcv+bY6L0z0k4rO5eSAsQspQW2R0g=
X-Google-Smtp-Source: APXvYqwamduqK4AU121MQ0Ikb05yrfqc3p5DCzK9ZGD+w3GpMGskGm5cAWFg58JJIz6Ngo7HuqUS8g==
X-Received: by 2002:a1c:3883:: with SMTP id f125mr3186864wma.18.1565079968089;
        Tue, 06 Aug 2019 01:26:08 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id r12sm104220733wrt.95.2019.08.06.01.26.07
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 01:26:07 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Carlo Caione <ccaione@baylibre.com>,
        srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: meson: Link nvmem and secure-monitor nodes
In-Reply-To: <20190731082339.20163-4-ccaione@baylibre.com>
References: <20190731082339.20163-1-ccaione@baylibre.com> <20190731082339.20163-4-ccaione@baylibre.com>
Date:   Tue, 06 Aug 2019 10:26:06 +0200
Message-ID: <1j5znawvhd.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 31 Jul 2019 at 09:23, Carlo Caione <ccaione@baylibre.com> wrote:

> The former is going to use the latter to retrieve the efuses data.
>

Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>

> Signed-off-by: Carlo Caione <ccaione@baylibre.com>
