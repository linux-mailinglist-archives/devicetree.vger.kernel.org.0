Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 11D841BEF5
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2019 23:07:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726286AbfEMVHH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 May 2019 17:07:07 -0400
Received: from mail-io1-f48.google.com ([209.85.166.48]:38745 "EHLO
        mail-io1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726277AbfEMVHH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 May 2019 17:07:07 -0400
Received: by mail-io1-f48.google.com with SMTP id x24so3814266ion.5
        for <devicetree@vger.kernel.org>; Mon, 13 May 2019 14:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=+7m8qAQjBviaFmOghs6Z+97Gn0Ch4ti3J4o9pemJXns=;
        b=moy9hST8u3nZL8K7X9LmUOb8sPFjKOZk9jjU7eXuqiU+rrXYV1JBnO24vrOKZO6Ly2
         1Mge2VulaUA068g32/5UvGe2Gaf7cRcv/9Q0E1GEBQIRu3pJGtfuAxDe0Z/MAT9zghwr
         SPEDzdu68/OGdeXkJY6u/QCMEQdFFEOdaG/7Z930tzvmGpEJB680G797FIRNJGxe14cl
         ZvTWtSAcgbSB2llJ2wy38UOvx07Nhko1YRrL8ccK8492ipBnnmcq0BSFNaYHB7vpH7pF
         nzJjFa5Xh+Wk5Yi7uZDsUfD5o/EfLNJ+mRniDrilmgVo7dYEgx9ZKd4OfLQL0mzYQAOX
         36UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=+7m8qAQjBviaFmOghs6Z+97Gn0Ch4ti3J4o9pemJXns=;
        b=ruyjrYAb2vLXm4aEOzB088QVgRfZAvF/Ox8h+4zOvtWHtYH2VUhJhck752CgS0dm1L
         +jX0LYKQmj+a2whzzDhi1070w4VTWTGSIIHPjAKvLahVFp0/4alXQjhorUJY9kXNdwZC
         K4GwFWaTZMMi0LEXwB5/nj/Ezrkzw8WDDwK6x6S1eE6EDmhbcF0+BKQbMXWNrSLD6ubC
         BvkWM81KCq/KB72wETgLXaqiXO+zDID+O+mZQF1k56d1Qm657LloGYOs6w7zjaowQtdf
         +JJ3U3nQFxK85cH3xZ0WDUT2qjDOlSSG7AHLnzSibSG8HTDloCYkN9dd+q+dSmUzL9GK
         PMKA==
X-Gm-Message-State: APjAAAXHKbBYWsBmGNV/hzaqzOSzQzyL8zxLSpEXLzdBoWwCFxretWbE
        ThPCxhOJSa+Te9X8/1UaVxAkZVVEw44=
X-Google-Smtp-Source: APXvYqzAKBcFsS+Y7adHO16lbwFC8l2Evh0Cd9l2abi8zINYBOvpufFAj53P8LJXw8+H5xm3l6EJtA==
X-Received: by 2002:a6b:c386:: with SMTP id t128mr16804601iof.167.1557781626383;
        Mon, 13 May 2019 14:07:06 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
        by smtp.gmail.com with ESMTPSA id p78sm300323itp.35.2019.05.13.14.07.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 13 May 2019 14:07:05 -0700 (PDT)
Date:   Mon, 13 May 2019 14:07:05 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Rob Herring <robh+dt@kernel.org>
cc:     Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@sifive.com>, devicetree@vger.kernel.org,
        Megan Wachs <megan@sifive.com>,
        Wesley Terpstra <wesley@sifive.com>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-riscv@lists.infradead.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Paul Walmsley <paul@pwsan.com>
Subject: Re: [PATCH] dt-bindings: sifive: describe sifive-blocks versioning
In-Reply-To: <CAL_JsqJRdjoTo2hGrKWvcyer18wt9N6w0nkfa9xx_e2xJ6pkYg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1905131406480.21198@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1811211704520.16271@viisi.sifive.com> <CAL_JsqJRdjoTo2hGrKWvcyer18wt9N6w0nkfa9xx_e2xJ6pkYg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 13 May 2019, Rob Herring wrote:

> I just noticed this was never re-spun and applied. We now have
> bindings in tree referring to it though.

Will send an updated version shortly.

- Paul
