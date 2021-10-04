Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8732420762
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 10:37:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229835AbhJDIjG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 04:39:06 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:42624
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231510AbhJDIjF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 04:39:05 -0400
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id D4ED740294
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 08:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633336633;
        bh=9ZwCtTzwSq1uVvj/tTRyEks425J4Fu+BkeRySbAum8A=;
        h=To:Cc:References:From:Subject:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=kLSQCHPKC6MWOW63FZ9M6+HajuaPD4ihFDXkzNgb+TIOa4Re6HcKnugUQpD+tqiS4
         eS4gIdpqarsXzTdu9GsBMsmjZfuUi049tR9UKFgTAJkjrAjOpqxKgNvb76pe0vc/dZ
         jK6M5xfUK7snrbISrN6VMxsq4t+NmRi/g4ksouRIB2VshdGsbngRLwoWr+QwwDCBeV
         uQIFPy1FeckcfpBb+GbELenBq2tKm3IuSuYyOT8csXmAhqyiJWUaOj3FfHKxNR7lbj
         Wt5xfyhbDhCwIeENKyUaOdxFuPzWkYtJtU01tghKrafbVFNP/oVYdFzDLVOQplrU6q
         7um7yu4JFL3Og==
Received: by mail-lf1-f69.google.com with SMTP id z9-20020a0565120c0900b003fce36c1f74so13599760lfu.9
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 01:37:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:cc:references:from:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9ZwCtTzwSq1uVvj/tTRyEks425J4Fu+BkeRySbAum8A=;
        b=ecEXwZXGbD/Nf1DPrK7RmsIO/NFaQpmYxHdodlBQK1qUVmZcYyiLzCP8XagEM6tJMz
         u7jA3WjXQwc7Gw0LU1X0tknBnD8KLUDMju3n8uynlBjG9yow4lZ6aVrHGO5IqH8E1quf
         atnMruxJNe8+ulMIlG3+OHjT2J8cTFs3kPoDXxLK34F0SWlbKKwbOElBl4zzXmMYJiz5
         c6+W5DOEa6QxDYKJWsTxqcSiwEOaRuzWXuul6ATchxFk9jEiyr5DgJu0U74MDOr2vhwW
         yWXMl1Z20f658ZLzbrwvIvY3jXmCiN2FUEF3x77Y8C1Vvm4ho6n5NagPvYVwE958XziM
         cVZg==
X-Gm-Message-State: AOAM531xyi2BosyIXXRDuJ+ggenh8FCjVLQZ9WgbuxK+cA24MSt7Ji+B
        S/KhiJPHVmzV364VOY5pBhoTln+w14MNipNdYIobcSl003sMVrLII+jNOxkDnU4zYBA+//vrdNp
        nWsxt9vbDf12vXG/4vM9td+2QoWU7LUc+PpIQ/J4=
X-Received: by 2002:ac2:44a2:: with SMTP id c2mr4213105lfm.452.1633336633257;
        Mon, 04 Oct 2021 01:37:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzIpIoQvGRYSydgv8gO2smid6Br2zdF6PBc8gJBhHpLJls5rpiHdF7zMbh37bkAT9xl7GaGLQ==
X-Received: by 2002:ac2:44a2:: with SMTP id c2mr4213083lfm.452.1633336633008;
        Mon, 04 Oct 2021 01:37:13 -0700 (PDT)
Received: from [192.168.0.197] ([193.178.187.25])
        by smtp.gmail.com with ESMTPSA id a23sm1005122ljb.107.2021.10.04.01.37.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Oct 2021 01:37:12 -0700 (PDT)
To:     Dmitry Osipenko <digetx@gmail.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20211003013235.2357-1-digetx@gmail.com>
 <20211003013235.2357-3-digetx@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: memory: tegra20: emc: Document new
 LPDDR2 sub-node
Message-ID: <a3713f62-0ece-5ab2-f55a-3d614ce01c00@canonical.com>
Date:   Mon, 4 Oct 2021 10:37:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211003013235.2357-3-digetx@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/10/2021 03:32, Dmitry Osipenko wrote:
> Some Tegra20 boards don't have RAM code stored in NVMEM, which is used for
> the memory chip identification and the identity information should be read
> out from LPDDR2 chip in this case. Document new sub-node containing generic
> LPDDR2 properties that will be used for the memory chip identification if
> RAM code isn't available. The identification is done by reading out memory
> configuration values from generic LPDDR2 mode registers of SDRAM chip and
> comparing them with the values of device-tree sub-node's.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  .../memory-controllers/nvidia,tegra20-emc.yaml  | 17 ++++++++++++++---
>  1 file changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-emc.yaml b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-emc.yaml
> index cac6842dc8f1..65f7c3898ac4 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-emc.yaml
> +++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-emc.yaml
> @@ -164,13 +164,14 @@ patternProperties:
>        "#size-cells":
>          const: 0
>  
> +      lpddr2-configuration:

Nodes should be named generic, so just lpddr2?


> +        $ref: "jedec,lpddr2.yaml#"
> +        type: object
> +
>      patternProperties:
>        "^emc-table@[0-9]+$":
>          $ref: "#/$defs/emc-table"
>  
> -    required:
> -      - nvidia,ram-code

Isn't lpddr2-configuration required in such case? If not, probably you
want either this or that (oneOf like in reserved-memory.yaml).

> -
>      additionalProperties: false
>  
>  required:
> @@ -186,6 +187,8 @@ additionalProperties: false
>  
>  examples:
>    - |
> +    #include <dt-bindings/memory/lpddr2.h>
> +
>      external-memory-controller@7000f400 {
>          compatible = "nvidia,tegra20-emc";
>          reg = <0x7000f400 0x400>;
> @@ -226,5 +229,13 @@ examples:
>                          0x007fe010 0x00001414 0x00000000 0x00000000
>                          0x00000000 0x00000000 0x00000000 0x00000000>;
>              };
> +
> +            lpddr2-configuration {
> +                jedec,lpddr2-manufacturer-id = <LPDDR2_MANID_ELPIDA>;
> +                jedec,lpddr2-revision-id1 = <1>;
> +                jedec,lpddr2-density-mbits = <2048>;
> +                jedec,lpddr2-io-width-bits = <16>;
> +                jedec,lpddr2-type = <LPDDR2_TYPE_S4>;
> +            };
>          };
>      };
> 


Best regards,
Krzysztof
