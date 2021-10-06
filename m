Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73FD7423BDA
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 12:59:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238157AbhJFLBP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 07:01:15 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:45010
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238121AbhJFLBP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 07:01:15 -0400
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8479E3FFE4
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 10:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633517962;
        bh=DwnLqhbs1ojkMd5U1zKgWTtac7rTxmeVLSmcoF2I0FY=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=qlSyX3YXkfnraeJ7PowsYBuu8gqmBa+fyfZcZg5JQEIgxb9/A8ajK0Wk5uI/s72g/
         o7ndx0JEUMAtlsu9rN04orTUXxHz9xCD6rv3vfpDk2n1OgE4AgHxepct1Oe/Y9wID3
         WvlRwakq1f8GKUWfd4secX+j/+G+SBOyYbndiBJGBf15XJRl+VCBlZCnGh+IZZ2qWw
         Sm4jfgexIrES3gQ+dYLJeSFdILQHh5l7vK7iIylhIVjJgoAPqeCXjTrkb982vB2j/x
         /2RLEbTtQhfaBIRJWjaZLSIQdr+P+RcH4SBeVjW3+0EhfsSSL+0wD/aBhYCLGtTbUy
         T77Aj/D6tssrA==
Received: by mail-lf1-f69.google.com with SMTP id a28-20020a056512021c00b003f5883dcd4bso1699287lfo.1
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 03:59:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DwnLqhbs1ojkMd5U1zKgWTtac7rTxmeVLSmcoF2I0FY=;
        b=GSWzsIcn8PVp/8+w0XuZfglTFFMfBL3eK77UbY3wEXM5lLkT18XbGInyGmkdwwzOMF
         nKrm7QqDS6tct00dXVJmQtgEMHiLin19T1jnabz17z5/SU9Kd9ucS3xOB+84MNOtDfOE
         NIzxogmf7YDPl3Gd/VnGKQsipEpXlsRO+cmjDv62zMOim28PtG0dCLNjVA777dWxZsoN
         zpIAb2IbwNNtvXRybAjZ8dXXv2dQm4Yc8XR+C4loke5XTHQn/2o40bz5Ud1GSOcpWfP3
         cTl0gLwAC5+cM4rvUg7uKMNZVzF9DqFk9/o0BrlvWnX7KGA+1BDvlEvVfmf22UW512uN
         uxDA==
X-Gm-Message-State: AOAM531m0GUixoKtMFVAgXUDOsuU378fkBzUzbp5Xpc2OqUUZgnk9mgq
        o2xf6kEriBQ0ISO183WqL2cps4B6hG0+V/zr0QLe9k+cPHJeWicdC6ZmeWIyFENVp2SwRdPI2qm
        m21eZjThW4TWnlMpJusBNfOJt6ozQ/RYMxV0BSrs=
X-Received: by 2002:a05:651c:544:: with SMTP id q4mr27900693ljp.320.1633517962000;
        Wed, 06 Oct 2021 03:59:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwvku7QbChsEuzS2GP3nxsK0deI5VnUcpYmRH1PLfYhlmv+GHif4vDVEjw0oA6fSlumv490+A==
X-Received: by 2002:a05:651c:544:: with SMTP id q4mr27900674ljp.320.1633517961814;
        Wed, 06 Oct 2021 03:59:21 -0700 (PDT)
Received: from [192.168.0.20] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f24sm2263663ljj.30.2021.10.06.03.59.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Oct 2021 03:59:21 -0700 (PDT)
Subject: Re: [PATCH v4 3/7] dt-bindings: memory: lpddr2: Add revision-id
 properties
To:     Dmitry Osipenko <digetx@gmail.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20211005230009.3635-1-digetx@gmail.com>
 <20211005230009.3635-4-digetx@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <545e4036-a9fe-a0f1-dd8c-f5948fee6c4e@canonical.com>
Date:   Wed, 6 Oct 2021 12:59:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211005230009.3635-4-digetx@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/10/2021 01:00, Dmitry Osipenko wrote:
> Add optional revision-id standard LPDDR2 properties which will help to
> identify memory chip.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  .../memory-controllers/ddr/jedec,lpddr2.yaml         | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
> index d99ccad54938..01efb43c3425 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
> +++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
> @@ -24,6 +24,16 @@ properties:
>            - enum:
>                - jedec,lpddr2-nvm
>  
> +  revision-id1:
> +    maximum: 255
> +    description: |
> +      Revision 1 value of SDRAM chip. Obtained from device datasheet.
> +

Also type/ref for uint32 needed.


Best regards,
Krzysztof
