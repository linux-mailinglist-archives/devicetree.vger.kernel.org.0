Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7397A82677
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 22:57:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730595AbfHEU5Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 16:57:24 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:34616 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730036AbfHEU5Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 16:57:24 -0400
Received: by mail-pf1-f194.google.com with SMTP id b13so40241000pfo.1
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 13:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=MBL6QC5vlpzt5AngG/FRA3lcAQRQn0eH0TwH8QaWuhM=;
        b=dI55BA8Rc5L0QSs0H4asppkLBJnET85ehWDm3dOabaNPcD1tC57hPZW2xlBbrdERdW
         OHHgMQWNrOou2yw+G6GbBnHgHZ2R4uRBYW5UKBrvsZYCVRC1PJEREcnTkKsLYggHyB0C
         dwqSZI5UjSBK8z0e9PBQ+cOAnoVi3HeVuYuQIu8l2sV8Va0ma/a5HOWocV4d5Q835vcj
         hciHn5PxKIER5+hSQoZ3MWizab63fyIunxhFUmW522/kQ2Cx0Mn1RGyni6sJEqv2r7tV
         R/zDWe2jsVp0LAxgE+ZNLdvQ6WQw03tS6lk1RNuNVzNa8k9rpYlRTkISf6G0wo1R51kU
         YK6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=MBL6QC5vlpzt5AngG/FRA3lcAQRQn0eH0TwH8QaWuhM=;
        b=tpLsi1pbX1CssFt/j47sb+ehgRTu/OdFMHI1e0ZP0JPUBYrPp1axnTUnvetJWIpeCi
         NQsmVdn6gyC5yJOVrYnF6AREoN3XHJ6cU2Ju7DQFcWrqOfLpAXQneEjrznRdX7b93LWX
         64LqYHZOb7kkUnl5CDnJhiiD+VihH2C7F8nAzz7RFIQuAyd01h7b8FiuuTMYQti0etCm
         xU7EF03KppJsHDeL5fWAmcMOlXt57JjU0ai4lkAjEoq0NrIGjiXxYZ48FEoBtqvvhyZf
         VIs23i16SDxqwxq9FSczwTtsUuA6LrNVAzC/9jorf/xZZeUHfAym/Rb0fdlyTVkbAfdT
         qKfw==
X-Gm-Message-State: APjAAAUo+S2gLU2HAA1cjpBdDOI/q82y6WHJz1wxP760TRUsYa4LiBpw
        ISm8deQiJ4Hq8KB7P6+rXxIXM1WYcb6fKw==
X-Google-Smtp-Source: APXvYqzpNga1cFOZRQehsL3w0s7LtZw+r6OECWH41h2VT7tp/iCGiPCuVTQUq2IXEBnZ8xJz7SRYXg==
X-Received: by 2002:aa7:8b52:: with SMTP id i18mr76135064pfd.194.1565038643597;
        Mon, 05 Aug 2019 13:57:23 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:7483:80d6:7f67:2672])
        by smtp.googlemail.com with ESMTPSA id q7sm96589013pff.2.2019.08.05.13.57.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 05 Aug 2019 13:57:23 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: meson8b: add ethernet fifo sizes
In-Reply-To: <20190718093623.23598-1-jbrunet@baylibre.com>
References: <20190718093623.23598-1-jbrunet@baylibre.com>
Date:   Mon, 05 Aug 2019 13:57:22 -0700
Message-ID: <7hr25zgwjx.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> If unspecified in DT, the fifo sizes are not automatically detected by
> the dwmac1000 dma driver and the reported fifo sizes default to 0.
> Because of this, flow control will be turned off on the device.
>
> Add the fifo sizes provided by the datasheet in the SoC in DT so
> flow control may be enabled if necessary.
>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>

Queued for v5.4,

Thanks,

Kevin
