Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 827771425FA
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2020 09:43:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726619AbgATInl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jan 2020 03:43:41 -0500
Received: from mail-wr1-f65.google.com ([209.85.221.65]:43363 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726607AbgATInl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jan 2020 03:43:41 -0500
Received: by mail-wr1-f65.google.com with SMTP id d16so28552287wre.10
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2020 00:43:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=gifHuIbCmX+R9NDRnITZu82J8BFsOQKVLbmsTjc0e3M=;
        b=musV59sR94nIPfcgLIQtZwLs7/Yv/sT8+U7PToHVQCNBIcL9rnHYPKzK/o72OFGbox
         jC5rDARSf8dVbjGdy1UbybpHRvHUWMVEnAJWJfY/VzyoM70ysvSBCWqNMlraAkrJ8eGO
         UFcbGHGVg2C7GbWXAWgdzcBbK80kqSgtqMC9mfwfNsUffbNzqADCqCqSn9oHEnxXyk2n
         PxwYRMqYfoafCx/frJnKYxhPj/KO5Gwc3r4Jg9XBiSpOfSupaGCRbAYKNcSs1kmUiGUD
         yuAit4UfcbMIbIdFYnIZfY59dbcgkaoQKR1W+VD8uNGNVebbWne7xwRuhiywuw78zJNQ
         S+mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=gifHuIbCmX+R9NDRnITZu82J8BFsOQKVLbmsTjc0e3M=;
        b=UJX8eMwgMlkDBSUUqdv2qFV0cHNGm9ffiYclxsu2QSy4Z9K6xcScdBK5KhweEV+H6s
         FJpRxKmgV9rAHpoLhuOIWgOtJyIL9YIf64FzQ8ZwfMN3WrC5GYYlFnm0es4BidmkvRiU
         y1WAqu0U+nnny6v3NkkxFSU7viRjeSPr3Bq6Rc1tKOGkJO4wATWG48iFqluz/sFIsyY4
         k6k/4UvaiYWzcbK/SeGD23WvW9A44IdLpWDPrRguexffp8OjuHLvLT3Cv6bYPI6F+QCr
         BkGBkm0JKhaeScJ5lg+gP95qKg9tBSLzORDBRJTLRJgEpHYIHLtqf3HtUxWHiB1Tyrbk
         Qdyw==
X-Gm-Message-State: APjAAAU6YP47hw3t95BfUevcGJiD/lXkGGGM5uIN/xgsSpGaUcOcRj/G
        Tbr9z3R5EsRo83OjawEjXW2psg==
X-Google-Smtp-Source: APXvYqy+rWDfjjYcUJ9qyGjk1MjXcoc+KJXJZXfExAHNyyprH+X8jUuldYdSqr6JOsriaYepWzKiNA==
X-Received: by 2002:adf:df03:: with SMTP id y3mr17198094wrl.260.1579509819402;
        Mon, 20 Jan 2020 00:43:39 -0800 (PST)
Received: from dell ([2.27.35.227])
        by smtp.gmail.com with ESMTPSA id n16sm47472001wro.88.2020.01.20.00.43.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 00:43:38 -0800 (PST)
Date:   Mon, 20 Jan 2020 08:43:55 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Wen Su <Wen.Su@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org, wsd_upstream@mediatek.com
Subject: Re: [RESEND 1/4] dt-bindings: regulator: Add document for MT6359
 regulator
Message-ID: <20200120084355.GW15507@dell>
References: <1579506450-21830-1-git-send-email-Wen.Su@mediatek.com>
 <1579506450-21830-2-git-send-email-Wen.Su@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1579506450-21830-2-git-send-email-Wen.Su@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 20 Jan 2020, Wen Su wrote:

> From: Wen Su <wen.su@mediatek.com>
> 
> add dt-binding document for MediaTek MT6359 PMIC
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Wen Su <wen.su@mediatek.com>

These are in the wrong order.  Tags should describe history, thus
should be in chronological order.  For instance, the ordering you used
describes Rob reviewing the patch *before* you sent it, which is not
possible.

> ---
>  .../bindings/regulator/mt6359-regulator.txt        | 59 ++++++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/mt6359-regulator.txt

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
