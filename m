Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F0B4ACBC45
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 15:52:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388855AbfJDNwe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 09:52:34 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:32954 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388662AbfJDNwd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 09:52:33 -0400
Received: by mail-wr1-f66.google.com with SMTP id b9so7355795wrs.0
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 06:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=/NvVmuNoOB0cI3exs6clZvUlSAX7Buc7zqODPiW83oc=;
        b=BAWysBsPte1eDOFAueq6l7aDz/lo8WQ4I00OCGcelbXMKdAaHfz7FnmV8vaWJUtuJl
         XYSYy9P8BXBhxyBRaFO/SZb6sUBrhWoxzVUhi1BnayfEt6xfB1E5Syt3KiiCXlNIGXav
         5+xHo8reipGBqmVqZxoa2DV2l3RZ1j6EblIJkMIDZ1ZB4htJ3izRSLbDYNSGJZOzj17V
         Zcohv/yAKl9kPLc0stlmTD/HEXtMccfj5kHhf2ckYTm4pZ3pE2WiR7NYgy6LLP3LtgWU
         U4Lh1s3ay5tdxqXImbzaKSLyVkITdDOpt7NFl+N7jVXt3t+/EMW4I3u5+veWBLx/x9wj
         SNTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=/NvVmuNoOB0cI3exs6clZvUlSAX7Buc7zqODPiW83oc=;
        b=TKCRmslpz5+UYRM5amXxwV974cnrmiWH8KeiMgum1PODNGPAGq5AhbE1CaJfQ2zgzk
         dKC4pntAyd2RIzGTsQwuFAwSKvjxOtHNB1MQYCrWrsB/4i6zOhP8pBTxOVBYhWzNzdaJ
         R4n+acZ6wD4W/lEJ+WDC0hhGqMkDxhr+w7DTaKcq2GAmkqVwJMs8f1gxRSMNycI06n/x
         LYv3wwIAR6g3XIzM2yl4VV0+UAY691M88h2KMfT64NQ/9JSdh/P9BhlvrlPmW4/i1frL
         XkDfDIOnezg3L6At1YdM8fG3Ji87zEelN+kRlJfHY+Vv1v3k2PZwlCMgLfS7Q6mFiK4z
         uPZA==
X-Gm-Message-State: APjAAAXcb4EY8bM+yLXqMD5w1cBMm8FBmktQN/gNOrq1inqBJq3bbAq8
        sv4tJ3jvJCKWO1oQ+hqK0o4mCA==
X-Google-Smtp-Source: APXvYqy2g3UP4Xetnx/eP45GILdnzIptbOKDy3NsV2tZHWR0IcpxUDP5HKAjTn9LSSeZcbJQp0Ux3g==
X-Received: by 2002:a5d:4a09:: with SMTP id m9mr11842704wrq.93.1570197151233;
        Fri, 04 Oct 2019 06:52:31 -0700 (PDT)
Received: from dell ([2.27.167.122])
        by smtp.gmail.com with ESMTPSA id x5sm5230136wrt.75.2019.10.04.06.52.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 04 Oct 2019 06:52:30 -0700 (PDT)
Date:   Fri, 4 Oct 2019 14:52:29 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Bartosz Golaszewski <brgl@bgdev.pl>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org, linux-pm@vger.kernel.org,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH 1/6] dt-bindings: mfd: max77650: convert the binding
 document to yaml
Message-ID: <20191004135229.GF18429@dell>
References: <20190930130246.4860-1-brgl@bgdev.pl>
 <20190930130246.4860-2-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190930130246.4860-2-brgl@bgdev.pl>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 30 Sep 2019, Bartosz Golaszewski wrote:

> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> Convert the binding document for max77650 core mfd module to yaml.

MAX77650, MFD, YAML.

> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> ---
>  .../devicetree/bindings/mfd/max77650.txt      | 47 +----------
>  .../devicetree/bindings/mfd/max77650.yaml     | 83 +++++++++++++++++++
>  2 files changed, 84 insertions(+), 46 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mfd/max77650.yaml

Looks okay in principle, but needs a DT Ack.  Preferably from someone
who speaks YAML.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
