Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 616CF45856E
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 18:25:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238282AbhKUR2Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 12:28:16 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:33172
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238455AbhKUR2M (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 21 Nov 2021 12:28:12 -0500
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 2E72F3F334
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 17:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637515505;
        bh=kZq5pPsma0owINBv5hr75ENNQJHBAu3bptY+ZTWWILM=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:
         In-Reply-To:Content-Type;
        b=U7Uiph3YP01Q+ZXqK9yExD9T/bT9O+evDO9zy1a1NUGEAfbb3J8beZpmsURHJQe9I
         0+3VrpB0j32NdpmX36WT75yT9JhIndwMBVu0ZuDQJz5Oql7tfnKM5DFdxE8VqlCNRr
         juzWCCkt3mR/01owYy4qKp5SrWoltaKJBaV9qkT/iYYoQaQFzjthmAycyFgj3vg/TU
         AF6oWt7P86vWPLP6aiJchorgb4/omJF+UGupZnpNZFydsQnNg2KlLp1IS7xSrvSAVT
         2LqhFSbsHDsskZ88J6Wy1WhuHvfxmqW4l7ftfcq4K6XY2fcXmL/dmQPEBGma0TF9yk
         okg1l7Ep7tfSg==
Received: by mail-lf1-f71.google.com with SMTP id c40-20020a05651223a800b004018e2f2512so10363033lfv.11
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 09:25:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=kZq5pPsma0owINBv5hr75ENNQJHBAu3bptY+ZTWWILM=;
        b=5n3GXBe4HNPLTLQ7ICLtStOUmde+pkVIW7DLKE4WV5EoVv7gZZQq5fWbCq+dx6zldH
         g8JccSAKRzwBdewli449O85N7IT+sW1rnEYNNB61S8KOw+OpCQXqlCzpmsaMF7zDf5qf
         9LCLQfuvPULs+eZIPYgSjWs5hx/GJjbsuTJwXiQbrXS0+eizb6jlfku46JXvVpcWo6NT
         J5dgwpFsSp497dxfFsMOZvBo/O9SxP26Ek0m8OPcyIilsmYKrWer0sccHovvdn5iejIz
         N9hKNwgV8K6qhSJjglAl6MtaHJmHMV/LBymDWoKYNU/BCEpkd/U5S1PAblG7K7vNAF1x
         PyJA==
X-Gm-Message-State: AOAM531iT71t3bAeedMKeIwInBmsPYUHyDVIMM6g7RhvlXizaVoNaCsj
        Rt6Y0P2JRUoH8au7FjrWUFUFMiWBlKD0LZJptNDBAfX7EXWwiXPSSvOkFFaizvZwFFr/aUVFn2f
        Dr+npQQAqaZdbVW9dps0/EocvYX7u6lLrAQO2efo=
X-Received: by 2002:a05:651c:1548:: with SMTP id y8mr45618963ljp.458.1637515502996;
        Sun, 21 Nov 2021 09:25:02 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx2f8OnhQj9sQ62rbV2mdM7eBIr9lOMtV63HTcWuDmQo4H5u0BxfwIDpl7Rc0NkZyH5hM5VIw==
X-Received: by 2002:a05:651c:1548:: with SMTP id y8mr45618947ljp.458.1637515502822;
        Sun, 21 Nov 2021 09:25:02 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id c1sm633211ljr.111.2021.11.21.09.25.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Nov 2021 09:25:02 -0800 (PST)
Message-ID: <3b627657-b2ed-13bd-f97e-363cc734da00@canonical.com>
Date:   Sun, 21 Nov 2021 18:25:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH v3 6/6] riscv: dts: sifive unmatched: Link the tmp451 with
 its power supply
Content-Language: en-US
To:     Vincent Pelletier <plr.vincent@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Qiu Wenbo <qiuwenbo@kylinos.com.cn>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        David Abdurachmanov <david.abdurachmanov@sifive.com>
References: <378c64fb868b595430b0068a9af10fdbeceb8e12.1637362542.git.plr.vincent@gmail.com>
 <ab42d60d325249d805d99db1c3981dd1fe9422eb.1637362542.git.plr.vincent@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <ab42d60d325249d805d99db1c3981dd1fe9422eb.1637362542.git.plr.vincent@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/11/2021 23:55, Vincent Pelletier wrote:
> Fixes the following probe warning:
>   lm90 0-004c: Looking up vcc-supply from device tree
>   lm90 0-004c: Looking up vcc-supply property in node /soc/i2c@10030000/temperature-sensor@4c failed
>   lm90 0-004c: supply vcc not found, using dummy regulator
> 
> Signed-off-by: Vincent Pelletier <plr.vincent@gmail.com>
> 
> ---
> Changes since v2:
> - Fix end-of-commit-message separator so change lists do not end up in them.
> Changes since v1:
> - Remove trailing "." on subject line.
> - Added a commit description.
> ---
>  arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 1 +
>  1 file changed, 1 insertion(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
