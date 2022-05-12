Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDDDA524522
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 07:48:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349981AbiELFsc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 01:48:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230050AbiELFsb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 01:48:31 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98AAD4B41D
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 22:48:29 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id fv2so4180370pjb.4
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 22:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Xuxuada9VjQWUI1huyzXxe5QzMXan59Iyu/e0FTIM3E=;
        b=ASJQRBuMuNpLQOOTO1/95U8uONu/PxLK1NQwtEc5uIIinPwbzZ+EiMTqvJW4QuLzs5
         Dvqj2QCJsNx8sPa/tDARlduwW3wdhQ0FGWnBcOUYQPrLWhXtmvZ6L3lTWYbNMl4MuYAf
         A/PyOdptPDjw6TlGMudLwSFxHjVnS2Te9OSnDg+gxoZsDP/tNurbNk44BFro9n430bhV
         vCHyXSBVgahfrymdhsL+5cRgGU7FA/ts3WzupsI2VR2OSHHZ3vUiHxnlMmFDF5i3eP0d
         +FD1eSppYkkUwZIlNxuO6EhS0yW5e5kxoU1rlLL/KgKIpZGwrK/dbcF9nIeuXBhIBiHy
         o7dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Xuxuada9VjQWUI1huyzXxe5QzMXan59Iyu/e0FTIM3E=;
        b=lXRNV6mbi7pY+2JlHDYfZN8N7cuVab1PK1ySidVicY/SlxRfYOK1N/ulByCRCjzWH3
         pAbbHT3OsdPH1FV47IDhLTrz9LgMt7QPxGJYA7Xyl/imt2G9HVTLqVDejAschtwMP1DF
         dOoQtJ0kV+egTG3wlFZXx7bXfSyaOe/gA5tRzEBQED5utq9w+XWAoG3EP/sQ0onlto29
         KzJAfUPBx5v8ygBL/ED+idCiiSVfBtKB3AFjNF7CD1PXzfSVSm/F12RZ+Y807nav5Ptv
         KUkSxY3q34d8GghgvdWrRNcbqL75VxIVTVLDPwHxF7sb7Bhy5x8NVhERJFdlOZEOJ6T2
         4/Yg==
X-Gm-Message-State: AOAM533GUnCO4bHKp6qPkrK8WGNzR/u1cHxys547OfQp+L42QFfklyJC
        InZid05iXyEDxi9Y8SEthnRMpA==
X-Google-Smtp-Source: ABdhPJy/83UwXF9qp2QmxMhj6rkiPyZePvTFVEifIrC1Ee9PJQriq+WUh+dvyq4lN3UFDvlBYmDWUg==
X-Received: by 2002:a17:902:e989:b0:15f:1545:326d with SMTP id f9-20020a170902e98900b0015f1545326dmr16902177plb.119.1652334509123;
        Wed, 11 May 2022 22:48:29 -0700 (PDT)
Received: from localhost ([122.162.234.2])
        by smtp.gmail.com with ESMTPSA id p21-20020a1709028a9500b0015e8d4eb245sm2868086plo.143.2022.05.11.22.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 May 2022 22:48:28 -0700 (PDT)
Date:   Thu, 12 May 2022 11:18:25 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>
Cc:     rafael@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        matthias.bgg@gmail.com, jia-wei.chang@mediatek.com,
        roger.lu@mediatek.com, hsinyi@google.com, khilman@baylibre.com,
        angelogioacchino.delregno@collabora.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH v6 00/10] cpufreq: mediatek: Cleanup and support MT8183
 and MT8186
Message-ID: <20220512054825.aqe4g4lupuqj3rcq@vireshk-i7>
References: <20220505115226.20130-1-rex-bc.chen@mediatek.com>
 <20220506042004.hqzpb66shak4y7rz@vireshk-i7>
 <86851bd03128cc61082d516ebff929d3637063cb.camel@mediatek.com>
 <20220512052732.iqphgpveoyrqjlqg@vireshk-i7>
 <af82434adea0b648d74ed5ffd123e0faaaac6508.camel@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <af82434adea0b648d74ed5ffd123e0faaaac6508.camel@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12-05-22, 13:33, Rex-BC Chen wrote:
> Matthias is not the member of mediatek, so I think we still need his
> feedback for these three patches.

Please ping him and ask for his feedback then.

-- 
viresh
