Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDD7D49D619
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 00:19:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232090AbiAZXTP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 18:19:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231888AbiAZXTP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 18:19:15 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0E02C06173B
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 15:19:14 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id d138-20020a1c1d90000000b0034e043aaac7so2138519wmd.5
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 15:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=kikE1Jj2G7EPLsPYx9xb/xCzMakjMgP2QJCqWREkHVE=;
        b=CiEkzEJ5k0W6rrqVjCjvD1mK4Xb8x4Ms52Omfleo4l+wsCY6Z/xqLNSLuIdUUOeJJ6
         G9nXWZzMggWr9Do8w3pMNjM1fikwPFv9t/H+AP+S+UL4T7i95IDW7Pm6K31f3jYBUkHv
         IAbXY6q/SW7EI/QK0GCIK/JW99TtwhCUZz4Nr4PJRCQcVe9gwiS61UVlCxAyXRwAvsgL
         RBCt3FcJpr4oWKFOUpN2xDQQvcHW64MJpwSGvjW1L7H+wxxUCGs5vz5tVg1LrVFgqKo/
         t1NHvCEBC5D+5YibHbtcNzs+b48ejlANiH3dpGPMI69jCLjMDRNx+0RHxB/s3kO2OXU9
         mLEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=kikE1Jj2G7EPLsPYx9xb/xCzMakjMgP2QJCqWREkHVE=;
        b=G2zPNtO+8xEddIE2yv2+d25ZWP8byw7ZNcfqha3xlCUzO5IjSKCaWbH3vOFDNk7e9b
         kSGYmk36XthSYIeUSvETcU+olefVAOZLtHBQJKrBO17VF5oRxGBj/DWC1rFQqimngNcW
         Iy09q0S1YBjeQm5jdUWex3gnzdIEEieVpLK1cWw29v/Av+EkGj+/Q8Veh4maxqWqYoKI
         qNOeero/M+2n3c3jVsFbBIvKU6Nj1VU2Jo6y5HEz1wjLBzXUp10h27cdnlJRabMJo2T6
         WtK2mng1/mtXsgZtVu8sSQKxwpuC54Hi8OwaLkjSehRXyq9wDovNqHyDPnaElSxxkRqZ
         gDZw==
X-Gm-Message-State: AOAM5313SnypGUlenrlHIeE5sqD+9K/W4Duuybv20LFDVrBHeUwGEk11
        cOLgW25YVazZh41Ch074fk5R1Q==
X-Google-Smtp-Source: ABdhPJwzF2w5t1FwlLEYR7BN/Pv7RsstXvmeMREv0+Cr5DON/tZthgyREPg3GzeHxI+rI9yu5AddWg==
X-Received: by 2002:a1c:a9d7:: with SMTP id s206mr848500wme.38.1643239153240;
        Wed, 26 Jan 2022 15:19:13 -0800 (PST)
Received: from google.com ([2a00:79e0:d:209:bd2e:4d3b:b065:fa46])
        by smtp.gmail.com with ESMTPSA id o6sm673724wrc.65.2022.01.26.15.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jan 2022 15:19:12 -0800 (PST)
Date:   Wed, 26 Jan 2022 23:19:08 +0000
From:   David Brazdil <dbrazdil@google.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Frank Rowand <frowand.list@gmail.com>,
        Will Deacon <will@kernel.org>,
        Andrew Scull <ascull@google.com>,
        Wedson Almeida Filho <wedsonaf@google.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v7 1/2] dt-bindings: reserved-memory: Open Profile for
 DICE
Message-ID: <YfHW7GcINVlB/3Ur@google.com>
References: <20220126231237.529308-1-dbrazdil@google.com>
 <20220126231237.529308-2-dbrazdil@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220126231237.529308-2-dbrazdil@google.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Wed, Jan 26, 2022 at 11:12:36PM +0000, David Brazdil wrote:
> Add DeviceTree bindings for Open Profile for DICE, an open protocol for
> measured boot. Firmware uses DICE to measure the hardware/software
> combination and generates Compound Device Identifier (CDI) certificates.
> These are stored in memory and the buffer is described in the DT as
> a reserved memory region compatible with 'google,open-dice'.
> 
> 'no-map' is required to ensure the memory region is never treated by
> the kernel as system memory.
> 
> Signed-off-by: David Brazdil <dbrazdil@google.com>
> ---
>  .../reserved-memory/google,open-dice.yaml     | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml
> 
> diff --git a/Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml b/Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml
> new file mode 100644
> index 000000000000..257a0b51994a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reserved-memory/google,open-dice.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Open Profile for DICE Device Tree Bindings
> +
> +description: |
> +  This binding represents a reserved memory region containing data
> +  generated by the Open Profile for DICE protocol.
> +
> +  See https://pigweed.googlesource.com/open-dice/
> +
> +maintainers:
> +  - David Brazdil <dbrazdil@google.com>
> +
> +allOf:
> +  - $ref: "reserved-memory.yaml"
> +
> +properties:
> +  compatible:
> +    const: google,open-dice
> +
> +  reg:
> +    description: page-aligned region of memory containing DICE data
> +
> +required:
> +  - compatible
> +  - reg
> +  - no-map

You already gave this a Reviewed-by in v6. Just want to mention that I
didn't pick it up because I added a required no-map here. It was always
included in our DTs but I made it required because the kernel should
never treat that region as system memory. The kernel will warn when the
driver tries to wipe the memory otherwise.

David
