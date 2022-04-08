Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D0C24F9EF4
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 23:12:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234559AbiDHVMx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 17:12:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239768AbiDHVMw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 17:12:52 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E614C181160
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 14:10:47 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id b15so9460003pfm.5
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 14:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=NGL7uIJYy64vRyv+WyTds0iR2sbu1H6xVYp+rBwYsq0=;
        b=0goe0SNyqeqNy9wKzBOTFC+7DmniXqC3vl6B6Ja5dbVTVTC/BZKzxTot9QUgRHj3YF
         TX9uws+8EDjls/VkPD49zygJEFl3fLPDh7wOGrUaQQ8Yi9manuILnBLXpKiJbDtK6wkd
         GBiXXLaiaTeyvR6B0bEboiCWp+bmK6fpIW/N2D87y5kKLuBdCDygGdepx6sOGFnlnlPU
         f25f1FkaVYI5MTYGDfi/LHNLH7gGp3EbDDCmm+zhZ3uyTsz7D43liONM+N5RJmkiJYTt
         63QBbMSvZi3/thOx0tR9I1AIZtqdN8wPSiaDxF/GgO4azda9Ys9eZDXwB5bc14UwGZJd
         PrcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=NGL7uIJYy64vRyv+WyTds0iR2sbu1H6xVYp+rBwYsq0=;
        b=tskwiaHR85eSonLnC/TXJ9WbA96naJFy4p8xUQLFtTR3MT7SRkOLykPsGIBOikCNNf
         ovp625w8Ybe2gWpkuO7w2fDgNwDGqqU86BcBF4sPMnbVIPnshCUFGqmARiqP9jzYPC96
         5Z/oVytaBvV6d3Cf3ZVVOKmg+NPguaA4UVv8WwqsCoQ0G1MxeSHiFjkB+T4IfmLLRrk1
         UGG7pma+dL8kCSbeHAz+UK5yQIfEHJYi8CWOpKiyhN/PHnR5cq/Xzv3RjTI1HSG9X4Uj
         z5994kl2WQdzp0TvgQt33pq5gAImZcBYKtrD9+ZtvZlDXsiP99VWBHiSm6y61lmxaE65
         9j+g==
X-Gm-Message-State: AOAM533+C+PG4uwjWheoJk7LyW4AyzqA2Kf8Ihj/ZZf30On+9lXcQsLL
        tB9+Mea0P+IAVO7mxBFqyDE/uA==
X-Google-Smtp-Source: ABdhPJw5mutMPEroFwzVQlx6BF6zMMQsdO7eg6KiAaxV8KEQBMyUxgjwuUVnLSqBovjUXQR6fpGbkw==
X-Received: by 2002:a63:4f0d:0:b0:399:5115:ff48 with SMTP id d13-20020a634f0d000000b003995115ff48mr17296204pgb.235.1649452247397;
        Fri, 08 Apr 2022 14:10:47 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id v4-20020a17090a00c400b001cb4f242c92sm2330393pjd.26.2022.04.08.14.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 14:10:47 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>, rafael@kernel.org,
        viresh.kumar@linaro.org, robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     matthias.bgg@gmail.com, jia-wei.chang@mediatek.com,
        roger.lu@mediatek.com, hsinyi@google.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Rex-BC Chen <rex-bc.chen@mediatek.com>
Subject: Re: [PATCH V2 14/15] cpufreq: mediatek: Add support for MT8186
In-Reply-To: <20220408045908.21671-15-rex-bc.chen@mediatek.com>
References: <20220408045908.21671-1-rex-bc.chen@mediatek.com>
 <20220408045908.21671-15-rex-bc.chen@mediatek.com>
Date:   Fri, 08 Apr 2022 14:10:46 -0700
Message-ID: <7h8rsf5lih.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rex-BC Chen <rex-bc.chen@mediatek.com> writes:

> From: Jia-Wei Chang <jia-wei.chang@mediatek.com>
>
> The platform data of MT8186 is different from previous MediaTek SoCs,
> so we add a new compatible and platform data for it.
>
> Signed-off-by: Jia-Wei Chang <jia-wei.chang@mediatek.com>
> Signed-off-by: Rex-BC Chen <rex-bc.chen@mediatek.com>

There's no upstream DT for MT8186, so I"m curious how this was
tested/valiated with upstream?

Kevin
