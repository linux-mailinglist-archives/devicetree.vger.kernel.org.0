Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 72FEC98DE0
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 10:36:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731306AbfHVIgi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 04:36:38 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:50503 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731681AbfHVIgh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 04:36:37 -0400
Received: by mail-wm1-f67.google.com with SMTP id v15so4751726wml.0
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2019 01:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hJPd4fuf0Q0sMRr9w0mel/Ifz7rq6P5j4CBybKzJMwE=;
        b=fTc2ZtuvP7loRUxCeHOgPc6dsw9cJe/gUATYN2BeKfWNZrsYWcd2marjjQdo7Lhqrx
         uLx1AGKf26OHMHtA5xWY3Rg6lgbYTKIL/O5bzItNqUt6HSSN3kKbS+U2utTdXj5gSNya
         L1KuOhXSniwIAEcJ9mY9B5gyHSRy+IbrzJtvOxGPofL6UU4bkSwFvGjfc7VdWBVSbSA1
         emEuDtg2xZZkrdV0Xqj5E0AQreiSXrMoaiUWwrU+t3iCkSZBq2GnSLMpx/JJPXuK1e+M
         2v72qAFJfFW0CyvlVoULupG3ZkhvrmIUF7SwS5HsVUoDhEefcLTyy3UJ4IXjZPjvl1+i
         wOGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hJPd4fuf0Q0sMRr9w0mel/Ifz7rq6P5j4CBybKzJMwE=;
        b=a0Y8TEVi2xZXVtXcrpbJoHkiQdFZVYailhHmoS8mS6xjTjOgT/Pi1MI8r1abL/GneB
         oDCTr8nrUqhSmio/sAnEuIUiLlqRIGhTtFOdNIeIJnjsoZRPiby9sMZzKy4tZYa6Nvd/
         X2jwRfx05AMwfGLzglYkB9sXQSsPZtqBwmBj8ewxo/MZoNgXxb4Q689MNHPaD2rqFGQl
         DV+28HAzShChrTQvHZkDY5WGG8uvjDpWxJ8JBHO6XoHbe+1ODGHylgh7Y0A9gJt7rmVl
         MB07pQ8OBKfOdeRA0YCHASIhitjJaCxT79BGYm7Kxn1xS7KQgBd0ZWvVTQxYw9XrPwWw
         WqPg==
X-Gm-Message-State: APjAAAWvIl3Yp8a7jAl6ccE67MLOGVAHyysMjdlq3UrS7CU3QzfOYDBl
        W3lRZ4ZZBrxrH8L0kIMhNwEBmCeSxVc7HA==
X-Google-Smtp-Source: APXvYqyEQYSwVXVVVF28yf/oOta4hazAt8LCB7iogxVzmdxVgpsq3i8NkGlKkfsdl/9+U3jsQN5rDg==
X-Received: by 2002:a1c:eb06:: with SMTP id j6mr5126462wmh.76.1566462995337;
        Thu, 22 Aug 2019 01:36:35 -0700 (PDT)
Received: from ?IPv6:2a00:23c4:f78c:d00:1570:f96d:dab8:76ae? ([2a00:23c4:f78c:d00:1570:f96d:dab8:76ae])
        by smtp.gmail.com with ESMTPSA id o17sm21342345wrx.60.2019.08.22.01.36.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Aug 2019 01:36:34 -0700 (PDT)
Subject: Re: [PATCH v2 2/4] nvmem: meson-efuse: bindings: Add secure-monitor
 phandle
To:     Rob Herring <robh@kernel.org>
Cc:     srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, tglx@linutronix.de, jbrunet@baylibre.com,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
References: <20190731082339.20163-1-ccaione@baylibre.com>
 <20190731082339.20163-3-ccaione@baylibre.com> <20190821181458.GA2886@bogus>
From:   Carlo Caione <ccaione@baylibre.com>
Message-ID: <7c5307fe-2762-eefd-5c65-4ff7c4bd2f5d@baylibre.com>
Date:   Thu, 22 Aug 2019 09:36:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190821181458.GA2886@bogus>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/08/2019 19:14, Rob Herring wrote:
> On Wed, Jul 31, 2019 at 09:23:37AM +0100, Carlo Caione wrote:

> There's no need for 'secure-monitor' anyways. Just do
> 'of_find_compatible_node(NULL, NULL, "amlogic,meson-gxbb-sm")' or search
> for the driver directly. It's not like there's more than one secure
> monitor...

How is hardcoding the secure-monitor directly into the efuse driver 
better than having it referenced in the DT?

Yes, there is one single secure monitor but (even if this is not 
currently the case) several drivers can use it making the secure-monitor 
a resource to be potentially used by several devices.

--
Carlo Caione
