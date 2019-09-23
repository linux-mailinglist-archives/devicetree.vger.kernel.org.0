Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 516A2BB72A
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2019 16:51:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438432AbfIWOvW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Sep 2019 10:51:22 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:35595 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2440066AbfIWOvW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Sep 2019 10:51:22 -0400
Received: by mail-lj1-f194.google.com with SMTP id m7so14028369lji.2
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2019 07:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MQ4XbRgxjoEcCAjRwxYj5iKXRQA5+W0NTLg9YBBvdGI=;
        b=IXQLULuLsbPbLFWMq6Ie4banwTScWjy+pSKd4Qy+5ymoqoWaV6eub7WhWe85lDpPcU
         jSe0nJxumwD4bR6T7haqW9dXH9tys0++t8H2N9QAV802x3PL88fINk9T8xGcmzT9PjJg
         jXigXFvUUzULkphdKGpqt1OFcGMRIIbLZ5lNFuQgNHuB8QzmJ8c4c1ZPk+e4PaS7mg+N
         hPQcZo8+V5DZC38aaUFHeUErGcej2qIhTOOCWFrg6tnfk79WLC/0qdZvQLxQSkBzt2uz
         bu/x1PzfnEfcxu9hrQi99LC3344iajS8llOOJkMWxUiRF5eTh4gcl/WeF3h2R9S6Mw5Z
         QnnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=MQ4XbRgxjoEcCAjRwxYj5iKXRQA5+W0NTLg9YBBvdGI=;
        b=jLLdAOZo+4cKqO3NminWGOSbMNOO6MsakckNahbqoLmqjEc2paLHK5RGaUpvCAQ0iC
         /7qF7HzJFA3ybcBiVe/6ZGezPcheVNlSRYc2kAKjJcrC5dMlpQaFPE7fhzTPeKnyhBFW
         Nbu7q6yjSy1UlIQROdCWeO2OsEJaVBvla7w1BedX+dwOtggZfMVT/MLt1euJ83I04NzF
         qxflYK9eXdAkoyGq9mqkVnCiBAs8NYuyTQ3UYOxQDcAo9WKrP5h68XQXz0LLPLqOMqJF
         f8+UO5n83xauBHCrjPJTsRVAq+qnqVLo3o5oB1Paj/+DMGkDhoOtDTPMKfBaocmdXjXJ
         Q+xw==
X-Gm-Message-State: APjAAAWmyUhvirAdv945gWQMNZfrbTFb/JAAwgtATlePWYLG7hHQsl25
        UGbPy6+xT615n+XeFjJ052rVFw==
X-Google-Smtp-Source: APXvYqzHY+eorjAgAhVP4Dl132IGdafJHK1OCK78zDk5TAnUZtisFjquV948ZxqaCuNWJMbopv3JLA==
X-Received: by 2002:a2e:2b09:: with SMTP id q9mr11287191lje.144.1569250278977;
        Mon, 23 Sep 2019 07:51:18 -0700 (PDT)
Received: from wasted.cogentembedded.com ([2a00:1fa0:4481:eac4:b23a:41bd:5284:723c])
        by smtp.gmail.com with ESMTPSA id z72sm2374697ljb.98.2019.09.23.07.51.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Sep 2019 07:51:16 -0700 (PDT)
Subject: Re: [PATCH net-next] dt-bindings: net: ravb: Add support for r8a774b1
 SoC
To:     Biju Das <biju.das@bp.renesas.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     "David S. Miller" <davem@davemloft.net>,
        Simon Horman <horms+renesas@verge.net.au>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
        netdev@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        devicetree@vger.kernel.org, Simon Horman <horms@verge.net.au>,
        Chris Paterson <Chris.Paterson2@renesas.com>
References: <1569245566-9987-1-git-send-email-biju.das@bp.renesas.com>
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <7b0cc452-6aee-7790-ac1b-853a0763cac2@cogentembedded.com>
Date:   Mon, 23 Sep 2019 17:51:15 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <1569245566-9987-1-git-send-email-biju.das@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello!

On 09/23/2019 04:32 PM, Biju Das wrote:

> Document RZ/G2N (R8A774B1) SoC bindings.
> 
> Signed-off-by: Biju Das <biju.das@bp.renesas.com>

Reviewed-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>

[...]

MBR, Sergei
