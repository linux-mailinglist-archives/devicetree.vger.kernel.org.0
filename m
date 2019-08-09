Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AFFCC8852B
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2019 23:42:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726157AbfHIVmp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Aug 2019 17:42:45 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:37694 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725985AbfHIVmp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Aug 2019 17:42:45 -0400
Received: by mail-pf1-f196.google.com with SMTP id 19so46694082pfa.4
        for <devicetree@vger.kernel.org>; Fri, 09 Aug 2019 14:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=KUM3uh4YG3g7xD60tEWjIOdbNcAYBxJr8dDvkPSassM=;
        b=eaEYHOGxrtKpI2RDINxsiSmA9841rqACpsBK0veNiiLnx5/RdEcxPBP+1JuMEJv8ml
         c/zZqfKPDjvxtyWKsTG7qDDmrjOAipLTcGoWX15KUA8E8hWtQYbyeQOxF7rldB2E+pyP
         8xU3hcQEJPkZFjzR1nWpXMKiJgwFGu2Z47QVfd+fqtjkgY4K/PwSg3IofaHPpnKK7xZ0
         IvatDahRGBhjOCuGp1gWZMmgD3BcQdm34esco7kIxBNdPFJ84W+Cwt9KxJ02twHRV0SX
         ob617ekv8g9D4hnfwHhr1gGscYTnC2t2Eg9yZNXCrgJOdwacrD960LNAfIeMv8dhGCEZ
         ajwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=KUM3uh4YG3g7xD60tEWjIOdbNcAYBxJr8dDvkPSassM=;
        b=TVkENoLOri3DMR7XMF/+VekjFtq0AdP3ghe/30C5/28erOl9zTZqNem9xDnIVvzyB0
         4KuhchxUKfYz1llIc3octAQtFDyhTbNzagpwefn4xWUQm/5IAdS9OpRYa0pnkupUhJ1R
         OnkOeEkGpWmQYLfWe+BybSLeEs3hdWEvTGh71ckLo0tao3wD5JENwtKaPSmkeQ6P/l0z
         +AAYZpIuUsCNiiUpjlnmeNombK3UsNv2Yigr8q8CFuDtfbmYzhMexNJfOUVSQRQETItL
         YmOx50o2MaFdcrmMvo8BOftXJyfUWofuVnk664qP4xbyhkt0FqZsCWNLciogNyopLi+n
         DXcA==
X-Gm-Message-State: APjAAAUajZEwr3tTQAkdRdCXMXIIjqdyam4UKj+mwzohPsUiAEsX1BNP
        DN1MZG81Lb717polfLSgUMub2Q==
X-Google-Smtp-Source: APXvYqxTWBcuZ765q0y8mXSELWr42R4+QfPzYpQhTxofeikXQhLgGolxHmOzS3zoi7iU4TSjj+XZKA==
X-Received: by 2002:a62:cec4:: with SMTP id y187mr23514666pfg.84.1565386964251;
        Fri, 09 Aug 2019 14:42:44 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:b873:707a:e893:cdb3])
        by smtp.gmail.com with ESMTPSA id x11sm3838464pfn.181.2019.08.09.14.42.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 09 Aug 2019 14:42:43 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Carlo Caione <ccaione@baylibre.com>
Cc:     narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/4] Rework secure-monitor driver
In-Reply-To: <12d38512-605c-3544-a525-2c3599559391@linaro.org>
References: <20190731082339.20163-1-ccaione@baylibre.com> <7hftmfguug.fsf@baylibre.com> <12d38512-605c-3544-a525-2c3599559391@linaro.org>
Date:   Fri, 09 Aug 2019 14:42:42 -0700
Message-ID: <7hsgqa2ey5.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Srinivas Kandagatla <srinivas.kandagatla@linaro.org> writes:

> Hi Kevin,
>
> On 05/08/2019 22:34, Kevin Hilman wrote:
>> Srinivas,
>> 
>> Carlo Caione <ccaione@baylibre.com> writes:
>> 
>>> The secure-monitor driver is currently in really bad shape, not my
>>> proudest piece of code (thanks Jerome for pointing that out ;). I tried
>>> to rework it a bit to make it a bit more tolerable.
>>>
>>> I needed to change a bit the APIs and consequently adapt the only user
>>> we have, that is the nvmem/efuses driver. To not break bisectability I
>>> added one single commit to change both the drivers.
>> 
>> With your ack on the nvmem bindings and nvmem part of patch 4/4, I can
>> take the series take the rest of this series through my tree for Amlogic
>> SoCs.
> Sounds good for me!
>
> I have Acked the driver changes, bindings need ack from DT guys.

OK, thanks.  I'll wait for an ack on the binding patch, then take the
whole series through my tree.

Kevin
