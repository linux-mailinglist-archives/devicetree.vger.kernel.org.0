Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91171493CB9
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 16:12:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355622AbiASPMi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 10:12:38 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46986
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1355602AbiASPMK (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 19 Jan 2022 10:12:10 -0500
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 4E1833FFDE
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 15:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642605126;
        bh=drjzBd6xSh2W3A1sdcF3qLyFND0naAGILhzsS9dD8A4=;
        h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
         Content-Type:In-Reply-To;
        b=bmCMoGK3E7NVMVNi+aR1QiNTl1ZhwlKniWMu98SewIvdWrq+GBO6YkP8/vCepkD0/
         BP8hRMtT/NjAzKW27Tx1hp1GmdYNhVpwTmGpuC8iTo/W7NyjoRpBBPyCcmpcDffUkH
         eNNJKzfmaUGPHpZFGMrH1znATCiWabBBvdK7ZhJ/jSrIxbzhkKzRyc/QK8MdgMTIyh
         6QxiTtd5u5xxQUL3tjhbzqL8+JygU8mxh8Ork/CHlUqpkd5T8OwsHk3CSM59TbboPz
         aeoUFkiaR/1VOD6opjh3fbQMQ+Mu5nBI5J1r5QMEBzNW4c8pUSa8HgLslOvfMm5fuX
         MgTErEAJQUgUg==
Received: by mail-ed1-f70.google.com with SMTP id t13-20020a05640203cd00b00403cefbefe7so2805022edw.7
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 07:12:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=drjzBd6xSh2W3A1sdcF3qLyFND0naAGILhzsS9dD8A4=;
        b=p2AUM99c3IJXzTDLMSY5vfyKPn4xX0Ql10zge+5cUpGUSwCNnLXtxBAHwkG/hvHB4n
         NuZ/IXe+bAQJDWEKwyDbKZKxoN/awdc/yXachIwqrcQhxYby3e92qvJWvWqWqju6WCiw
         ZxU5ehMNc8jvI5rKht9vIa28GtNZEqeWJpRX/mOv67x4EoREyEdc6fzby032LTgk0jCW
         4u7Y62t+z5yJ4yWPBcXGngpBW8a/YI5q6hM/YnYuW8+3qnlWreMGt1GyxPiRTv0xKyOn
         s574dhWhZ9Y/noU2iljziTZKLFvmxpRicTc1qVg7axi4MeZaP8S2Wfjj8tQ7kkIGaZa6
         eFNg==
X-Gm-Message-State: AOAM531zHIAYZnlAEADKOKL8oeY5SAt0hGd5NhuckiBobemhXbnzKYbN
        pbvoHmfOimGUruwdluzhQu15nl8Ro9FhZGmFKxM9ZbsMbcoF4sY9cRkR39jPJfU2jLidoNfiYPx
        ln0CYLcf2LOQ1w5JNRVgpXgehFsMbmQhbKHcHvME=
X-Received: by 2002:a17:907:90d5:: with SMTP id gk21mr24657797ejb.359.1642605118487;
        Wed, 19 Jan 2022 07:11:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxddTNyN9TBuuv8pGuZnGAB9t/ygdDr/3nax3MlitJXfQZJieVWGTj2hsRfDZn1PRaG5CZVnw==
X-Received: by 2002:a17:907:90d5:: with SMTP id gk21mr24657762ejb.359.1642605118251;
        Wed, 19 Jan 2022 07:11:58 -0800 (PST)
Received: from krzk-bin (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.googlemail.com with ESMTPSA id i23sm1339989edt.93.2022.01.19.07.11.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 07:11:57 -0800 (PST)
Date:   Wed, 19 Jan 2022 16:11:56 +0100
From:   'Krzysztof Kozlowski' <krzysztof.kozlowski@canonical.com>
To:     Alim Akhtar <alim.akhtar@samsung.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com, 'Arjun K V' <arjun.kv@samsung.com>,
        'Aswani Reddy' <aswani.reddy@samsung.com>,
        'Ajay Kumar' <ajaykumar.rs@samsung.com>,
        'Sriranjani P' <sriranjani.p@samsung.com>,
        'Chandrasekar R' <rcsekar@samsung.com>,
        'Shashank Prashar' <s.prashar@samsung.com>
Subject: Re: [PATCH v2 14/16] arm64: dts: fsd: Add initial device tree support
Message-ID: <20220119151156.y2rzrk2gpoweiofc@krzk-bin>
References: <20220118144851.69537-1-alim.akhtar@samsung.com>
 <CGME20220118150108epcas5p2d9cd4db7cb368c2bfbd7d058eba4107c@epcas5p2.samsung.com>
 <20220118144851.69537-15-alim.akhtar@samsung.com>
 <43e72d34-0e11-9ff6-6924-0cab62b51891@canonical.com>
 <000301d80d46$502ae590$f080b0b0$@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <000301d80d46$502ae590$f080b0b0$@samsung.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 19, 2022 at 08:37:40PM +0530, Alim Akhtar wrote:
> >Similarly to previous vendor-prefix patch, please let me know if it's expected
> >me to take it. I assume no. :)
> >
> I am expecting this will go via your tree, but I am ok either ways. May be you and arm-soc maintainers (Arnd/Olof) can take the call here.

I can take it, that would be the easiest, I guess.

Best regards,
Krzysztof

