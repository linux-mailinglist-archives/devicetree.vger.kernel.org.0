Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 841E941EA0A
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 11:45:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353179AbhJAJrV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 05:47:21 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:47152
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1353114AbhJAJrU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 05:47:20 -0400
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8CC30401A9
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 09:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633081535;
        bh=nyiRnY3elhBK73ooOJVOmC06zf7y6SkVvSwcrbkre8k=;
        h=Subject:To:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=VvNWzCBK1u+EHfVcuw9ufCyerXXjOAThwphROSK1zH7ge7hXvoc53jy9ZggaWYr9y
         kU20TK+ERhFIwfQRIW5geDRbA3rBO0iJBwJTd85o2wDb8raZSxObs+nrQdr64IKlAh
         l8/Gat9XrRUAteq+HwyOXgN3flOzz+CDoyFERV/yzEiNVQzObfh/2hrX5qWj6pF216
         P9SWIrJe++D1fkqkd6Zpnd+yzXuOLViZiTXEaSijg4W9dYWC8+ZvNHRRl8Z5mcaM52
         Ihgbvu3mkBSQVOVkvgvw3gacGAtUHx94/RUvqpLJiyoImb/0gqLHAzazRT4RdWgGKN
         93eB3KvfEMkHg==
Received: by mail-lf1-f69.google.com with SMTP id s8-20020ac25c48000000b003faf62e104eso8389446lfp.22
        for <devicetree@vger.kernel.org>; Fri, 01 Oct 2021 02:45:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nyiRnY3elhBK73ooOJVOmC06zf7y6SkVvSwcrbkre8k=;
        b=1Xb1Rkv+klck+e6/wYOoJKEilJDwCj1ULV2n2Hcb/xihl4YU7wJRoXvJO2yatyhP3Q
         MyVz9nrL8ckrGMV6QsdQTfEWuue3cVgKdqXNPFEZ4m46FfTtEVOUfaOs+yLpIN44IOGM
         C+sh5wUknXhwikr9/u854gXKN5S+IXVA0O6JNPwYvTxC0+jFFK4sNTrxhjV/Qw07+siR
         VPhZoJ2W/NYskklP6/LzKuMlwxCXg+oLUFR4Pwwq9wx8+cCzacC2OXAg0ciux6QvyMfi
         5i8crSJ+1ooxyvuQy9Qki4wvjj6UBxnuP4Yv8O4thIGQvUUOAkxAA2Wet1czC/hss+oC
         z8jA==
X-Gm-Message-State: AOAM530rQIHZMHilUlng2Qa57jBe0xcRgu3gdcT+7mB4f56yAuUJfAO/
        RKiUNgaivY4PbvpdUnwPB9szQs8Vgg6lr/6XKTAYG+d+BFRT0XyPJqvB40YAMcjfgyZ8otgTd1U
        JVMrjXKZuRGhw8MCjDxh0ITmQ7PqmQIpQqsVqozc=
X-Received: by 2002:a05:651c:228:: with SMTP id z8mr10685018ljn.507.1633081534965;
        Fri, 01 Oct 2021 02:45:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzKxIyWWFkeio1hNSB5XH6CFTmHBcLzDsp3ogVtdLYpiKKaILO3Bn+smaXb0XrSby27toXy1g==
X-Received: by 2002:a05:651c:228:: with SMTP id z8mr10685010ljn.507.1633081534783;
        Fri, 01 Oct 2021 02:45:34 -0700 (PDT)
Received: from [192.168.0.197] ([193.178.187.25])
        by smtp.gmail.com with ESMTPSA id c14sm485059lfc.49.2021.10.01.02.45.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Oct 2021 02:45:34 -0700 (PDT)
Subject: Re: [PATCH 0/5] convert ifc binding to yaml and drop "simple-bus"
To:     Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Michael Ellerman <mpe@ellerman.id.au>,
        linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20211001000924.15421-1-leoyang.li@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <4697aa5c-35de-8331-e7a9-831837618477@canonical.com>
Date:   Fri, 1 Oct 2021 11:45:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211001000924.15421-1-leoyang.li@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/10/2021 02:09, Li Yang wrote:
> Convert the ifc binding to yaml schema, in the mean while remove the
> "simple-bus" compatible from the binding to make sure ifc device probes
> before any of the child devices.  Update the driver and existing DTSes
> accordingly.
> 
> DTS changes should be merged together with the driver/binding changes
> if DTS maintainer is ok with it or after the driver changes are applied.
> 

It's discouraged to merge DTS along with drivers (e.g. soc folks don't
accept such pull requests), so I propose to apply it in the next cycle.

Best regards,
Krzysztof
