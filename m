Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6A8122428E
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 23:14:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726928AbfETVO2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 17:14:28 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:32780 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725976AbfETVO2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 17:14:28 -0400
Received: by mail-pl1-f196.google.com with SMTP id y3so7315226plp.0
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 14:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=e9DHapnp+Qtf77YR6olJPsTc8cKNqjeLv8Q9DilZXqg=;
        b=rW1xFXB/h+J/6RxYeiTn+/Q6pKGTEUVgsyJgniYwvDoIGXrx0B91WocP0iGbPkT3CO
         SxRBw2F4+HmqMrYzKl+Q6iHvx1CgT/sl/Gw2emNF/WpioKaJFb6o2G2tVwAIMUMcPZKs
         +gesDMpmDiigfgs2Ay3imhvQBB2T3M6d3Ge+5U30mvTx07z6EaPYwYoQ55uqv0q/wVi4
         C++USRuxnvy3BhcpZSOcByFVb5CJyJeNYFLymZ5IfbTT26fmKeHv4MTX+7aJwjlqteYu
         GSyWa/dPpb7+GhrHZkvRCqFA1oJMu9ymiumxDyopFuYUQpkQLnhYVBWOP0MzQpBY2fSf
         wtXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=e9DHapnp+Qtf77YR6olJPsTc8cKNqjeLv8Q9DilZXqg=;
        b=m75vJWXuD8XMDdyoXZCjnumLzRCw2+/ditrRLwXiLyeU0c2srOgq7J/zK3bXULIZCl
         Avgyc+RYRYp3Cq7T3iYuD+x3AXf1E4fKyhiN1IH5C6a8PLHGsPp75UuPEWi3AGva5cJc
         UuyCSttSsKPsPP18dFzjTlEshP12PTGn8Xh2EZ7X+Z6mB3nj480S3u1QYCHKMHmFKSDH
         O5y+B7JghR48Ubk0dyvqTPRxkHhacsIgGUvsAl/mbbhBxZg7rfLowxiXNdZkAMi82cjZ
         LdyXR3FOGhIjEdP5UsEWv0wLxTsIERCC0CC5kckbUzPIsVlXG7moUzv/lbiza6o64/Pq
         rUFw==
X-Gm-Message-State: APjAAAWTZcW69m9vofar1cwQk8I6sqIlI+N6A7eaeZ9aQ4kCcQhOFgOM
        qxWvdzwb/PDOkdXivV3T/RuoIdz2wXmlTw==
X-Google-Smtp-Source: APXvYqyHMN/K1s6B7b8p3IGNVlLCHVQU7SaaC8OyYAZAD0EsLuxuKwtszvPEIFa0iiSPXHKYTdOj5g==
X-Received: by 2002:a17:902:46a:: with SMTP id 97mr50159186ple.66.1558386867639;
        Mon, 20 May 2019 14:14:27 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:e483:1cc0:e2c2:140d])
        by smtp.googlemail.com with ESMTPSA id y10sm15075030pfm.68.2019.05.20.14.14.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 May 2019 14:14:26 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] arm64: dts: meson: g12a: add i2c
In-Reply-To: <20190514101237.13969-1-jbrunet@baylibre.com>
References: <20190514101237.13969-1-jbrunet@baylibre.com>
Date:   Mon, 20 May 2019 14:14:25 -0700
Message-ID: <7h7eak96by.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> Add the i2c controllers and pinctrl definitions to the g12a DT then
> the busses present on the u200 and sei510.
>
> Notice the use of the pinconf DT property 'drive-strength-microamp'.
> Support for this property is not yet merged in meson pinctrl driver but
> the DT part as been acked by the DT maintainer [0] so it should be safe
> to use.

Queued for v5.3,

Thanks,

Kevin
