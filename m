Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2940435E8F
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 12:03:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231625AbhJUKFm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 06:05:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231586AbhJUKFh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 06:05:37 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F25BC06161C
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 03:03:21 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id u18so187145wrg.5
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 03:03:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Pq6ffVOHqPjfKN12beban1i7Qjv2tPHN8CWSESl3fUQ=;
        b=f1t5T1HrVbqwRSlm2cPc1EGMx1JrONofDyFCm53gZY8MiyAbzia/BrKYdWW2YgXyKB
         n3gPfiivXhQBAwEs9iSh7btskWaLYgdkzLqmZhqOfzrstMuCKXkuPjJaMKn8uh5AUQyZ
         ytaVKFj/4QaoiZv9kN6ApDzmyCZ3n4+FgTw/3L+HqkYvY6khz0HGrLbZHR2HQV81pVmZ
         sD+pmAuIsHGuCDh9enq+QhF15cQnspOfFQkh9IUHViLltK23ZXoynf4SCy8qiBkk/FtM
         a2/RNMxdGbc6hZzuFq0eXrQ1IlZJjvsSh1o+KLurOiGiKMPuqJhTbZh86DAsGYeQVlN3
         Rl3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Pq6ffVOHqPjfKN12beban1i7Qjv2tPHN8CWSESl3fUQ=;
        b=4/N6ArWerBicnZ5p07me0lzYHLX80PcruTeq39uAAoKSgiDaWlDnt2llygT8qF0EN4
         JKnJtWqXBpbT2WYg3N8JK6D83uLUqN8zg1KSu2dFt7pH4T2Q5E5vLkhGv7zA5jivsLCQ
         7IYZS4QTlDfO22KzQ0U1FhxJqn4UOicHdoudSx1YH/Iqc1/MgqTb+H8oMiWyboGQ0mTU
         U3C5Kt6+WM7PxoFu4AgpX5FsiXa2TT8auEdM8a0YXX+1mARcmQ+FJNxgy7h9B8O8nzVj
         lifSqECF+7l77lZAsMHDNMry7maTg11fo7LImWs6A/dBrb0YYI55m6URNohZDQMFyjEz
         drjA==
X-Gm-Message-State: AOAM532sC4U33lB4gc0KeAwPitr+5kLYb8jpNcJBe7lGDNUXxYu13pLh
        L1BjFE2Z3jmSJJV7BfjPBmiG3A==
X-Google-Smtp-Source: ABdhPJx7WTp8oG6l5QNbcQVWisfShvLDN8DMb9PpRMsPd1LvqzjLVj02VOuCi7j7aSCfBu2SYff0Cg==
X-Received: by 2002:a5d:47a7:: with SMTP id 7mr5958605wrb.75.1634810600022;
        Thu, 21 Oct 2021 03:03:20 -0700 (PDT)
Received: from google.com ([95.148.6.207])
        by smtp.gmail.com with ESMTPSA id r17sm5012006wmq.47.2021.10.21.03.03.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 03:03:19 -0700 (PDT)
Date:   Thu, 21 Oct 2021 11:03:17 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] mfd/regulator: dt-bindings: max77686: convert to
 dtschema
Message-ID: <YXE65SBhGFHP54L6@google.com>
References: <20211008123552.191384-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211008123552.191384-1-krzysztof.kozlowski@canonical.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 08 Oct 2021, Krzysztof Kozlowski wrote:

> Hi,
> 
> Convert Maxim MAX77686 bindings to dtschema.  The MFD patch (2/2)
> depends on regulator, so this should go via one tree, for example MFD or DT.
> 
> Changes since v1:
> =================
> See individual patches.
> 
> Clock bindings
> ==============
> Existing Documentation/devicetree/bindings/clock/maxim,max77686.txt are
> left untouched. The file is still used/referenced by other Maxim
> devices: MAX77620 and MAX77802.
> 
> Best regards,
> Krzysztof
> 
> Krzysztof Kozlowski (2):
>   regulator: dt-bindings: maxim,max77686: convert to dtschema
>   dt-bindings: mfd: maxim,max77686: convert to dtschema
> 
>  .../devicetree/bindings/mfd/max77686.txt      |  26 ----
>  .../bindings/mfd/maxim,max77686.yaml          | 132 ++++++++++++++++++
>  .../bindings/regulator/max77686.txt           |  71 ----------
>  .../bindings/regulator/maxim,max77686.yaml    |  83 +++++++++++
>  MAINTAINERS                                   |   2 +-
>  5 files changed, 216 insertions(+), 98 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/max77686.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max77686.yaml
>  delete mode 100644 Documentation/devicetree/bindings/regulator/max77686.txt
>  create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77686.yaml

Does this need a PR too?

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
