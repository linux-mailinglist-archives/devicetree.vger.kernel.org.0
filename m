Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A7B455CA19
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 14:57:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236370AbiF0QZf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 12:25:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237163AbiF0QZd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 12:25:33 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7919E10FF3
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 09:25:32 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id i1so9324701wrb.11
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 09:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=EuuLB19nPdoRWR6VTPDRWm0q3TcaRzfzIWmlZYHlX+I=;
        b=iDIMSiufHbi+xgIRT5AbjsSLnfhOEsXV3kFd+8fH/quYNvQG7dlgBWGu1U0sm3BEnm
         RQJBcG7+v1RnRsxWwkMFS2H88CYK9VvDTwSfkRYvLi5+fywj/cH+XElUIc8x+ht4bLRf
         YMpg06mOK0hQnotBtt4KM3AB6QXpJxRuAtqXXuDhgZzLZnSdWDs1EY0tLS4to3F4YFAi
         UZwkYY/6X9658a5LeUujrjwO0y3HXNgnckW96rXLhFLCsOMx4iSjssdfTxDix+DcvnaV
         943KksdUMGA0W2A2iN8uxHIcK/25Gb1E2Q/P0McW3GlWkXf7WZBlBSHrA/cODWUG3swK
         moIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=EuuLB19nPdoRWR6VTPDRWm0q3TcaRzfzIWmlZYHlX+I=;
        b=52pP0xBlO6eLeWWf+53txmTepItxSuUQaItS4eln3wTvQafw0Ss7yTHr+e0yuJosuc
         GLLk9eLJbWCh352LHCxN3Q0rEHoQmVBnIj+gAXzf69yUM4IEqIbpczcLjnzlsp+zAzo4
         6rQA+Z/G/EEHmDf4GouOLMtjyDh7O3+zPo8eEwNRdnikfvj19qWynDiQ5O/ZfPrCg4MC
         AeiZgsHySOx0tvUpCYVJZdclWMz62mzQTFXmJ7nvnibxYdR/YyziXmnOtQ+VyVCYTaNl
         E40Hrj40hXIZ09L9V8hRXiZTsptmXhZ+BmydZxIdn2fdfYbhWPjMgC1zc9Qo+mpdzTFh
         ZHIw==
X-Gm-Message-State: AJIora8n8PW+ZgZo9xzFBlzsAH8pdJSaSMxYw7iLSEbmNC5JK6oOcx6H
        6PJauRqled1Yayt7zug4XMQkxaWma1R6bg==
X-Google-Smtp-Source: AGRyM1u5yKiCGRmmUpnMuvGGKabEaEMzTgNLY5p7btvY9mfVytbr0ZajDdU6octtLhEhes4aRkFqIA==
X-Received: by 2002:a05:6000:1705:b0:21b:bcff:39d3 with SMTP id n5-20020a056000170500b0021bbcff39d3mr12311802wrc.502.1656347130862;
        Mon, 27 Jun 2022 09:25:30 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id o14-20020a05600c4fce00b00397122e63b6sm14044617wmq.29.2022.06.27.09.25.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 09:25:30 -0700 (PDT)
Date:   Mon, 27 Jun 2022 17:25:28 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com, johnson.wang@mediatek.com,
        hsin-hsiung.wang@mediatek.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] mfd: mt6397: Add basic support for MT6331+MT6332 PMIC
Message-ID: <YrnZ+AUcYygsrQ02@google.com>
References: <20220627123954.64299-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220627123954.64299-1-angelogioacchino.delregno@collabora.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 27 Jun 2022, AngeloGioacchino Del Regno wrote:

> Add support for the MT6331 PMIC with MT6332 Companion PMIC, found
> in MT6795 Helio X10 smartphone platforms.
> 
> This combo has support for multiple devices but, for a start,
> only the following have been implemented:
> - Regulators (two instances, one in MT6331, one in MT6332)
> - RTC (MT6331)
> - Keys (MT6331)
> - Interrupts (MT6331 also dispatches MT6332's interrupts)
> 
> There's more to be implemented, especially for MT6332, which
> will come at a later stage.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
> ---
> 
> Changes in v4:
>  - Rebased on next-20220627
> 
>  drivers/mfd/mt6397-core.c            |  47 ++
>  drivers/mfd/mt6397-irq.c             |   9 +-
>  include/linux/mfd/mt6331/core.h      |  40 ++
>  include/linux/mfd/mt6331/registers.h | 584 ++++++++++++++++++++++++
>  include/linux/mfd/mt6332/core.h      |  65 +++
>  include/linux/mfd/mt6332/registers.h | 642 +++++++++++++++++++++++++++
>  include/linux/mfd/mt6397/core.h      |   2 +
>  7 files changed, 1388 insertions(+), 1 deletion(-)
>  create mode 100644 include/linux/mfd/mt6331/core.h
>  create mode 100644 include/linux/mfd/mt6331/registers.h
>  create mode 100644 include/linux/mfd/mt6332/core.h
>  create mode 100644 include/linux/mfd/mt6332/registers.h

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
