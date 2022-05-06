Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29D2751D00B
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 06:20:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1388930AbiEFEX7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 00:23:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1388926AbiEFEXw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 00:23:52 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A06A91CFF8
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 21:20:06 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id i17so6273257pla.10
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 21:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nYgHnNqlChNguPe7Q9G6D1OpvFbxYV1H4WdQcw7evEQ=;
        b=jLR8HEc8Nd75VZ5BMZ3GFNPR4EBWnhsK1Gi4HmhTScy0L2VXovvTvzt48ouC2ztuEV
         7UYwmbT6BD4//p9E+ex5zIrc17dCWgz3tLKNizpJe19Nz6F5XFBwK0tvGE26hUn8R0lK
         uX9vGEPo+nxqhfdwjJ+oa+wbNS2nQSwZfv1l6YfEnWpT+UosFMNdKC1IGwDveVzC2LDL
         rCt2EwbKegxPsGYnr0NycqAp2AQfRjSzGLLCun1sLFgq575fPTYXe1nchL45VMOOrirL
         QStI9DRPJ5ceSGkX+OI571GoMhgA1rcltzY2JMyysNZPiYWzUqD/7/OKTAp17VsyxVk4
         8G2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nYgHnNqlChNguPe7Q9G6D1OpvFbxYV1H4WdQcw7evEQ=;
        b=54rPKEJourpVezBB3UdhyB24JEgq1Bik2IEEVrVUwEgk9eLqkyoqXvyvAPZxTnZe0D
         quoP9NhBbst/iWtlRLgdcHiNliJSwBOwEe0ZYd9OIdeZ4iqFuPzoz+Hz3PeK57Atj4dK
         ou+6fQpCUtpw/4FqCpTEyYKM7QqE0LozRyPHkk0MaABCk2Frp1ND8t/K51uJOu7E4Ryc
         QOCfWES1VpB1Ran9KtISBLKTq4wzX1SSPQXA5sPki4cvv5ocnOqA8ePhYVqUA5yYnSLG
         6PPdjH2Ms4e9MrQn95w4v74WZE9V4ZKRv9FpWx6tn9Kqop8S++b7an5hu6sr+hTL0Cz9
         EYbQ==
X-Gm-Message-State: AOAM533X1u2i3Gw7Rh4QRtScOM0hT1zIFsIzN4kLonglgZhP9sUD4VM1
        4ZP/U4CmiCQY5qRcR8/ekOvrwg==
X-Google-Smtp-Source: ABdhPJwPdeAVQ0kgtN+QPRoWNHRxFzCt8kSKOwhyA+hqhpV5DQjikmiK5c4CLYCslM6zf1SeGOCrug==
X-Received: by 2002:a17:90a:9483:b0:1dc:5fb2:9b89 with SMTP id s3-20020a17090a948300b001dc5fb29b89mr9937153pjo.235.1651810806236;
        Thu, 05 May 2022 21:20:06 -0700 (PDT)
Received: from localhost ([122.162.234.2])
        by smtp.gmail.com with ESMTPSA id z189-20020a6365c6000000b003c14af50620sm2156741pgb.56.2022.05.05.21.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 21:20:05 -0700 (PDT)
Date:   Fri, 6 May 2022 09:50:04 +0530
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
Message-ID: <20220506042004.hqzpb66shak4y7rz@vireshk-i7>
References: <20220505115226.20130-1-rex-bc.chen@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220505115226.20130-1-rex-bc.chen@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05-05-22, 19:52, Rex-BC Chen wrote:
> Cpufreq is a DVFS driver used for power saving to scale the clock frequency
> and supply the voltage for CPUs. This series do some cleanup for MediaTek
> cpufreq drivers and add support for MediaTek SVS[2] and MediaTek CCI
> devfreq[3] which are supported in MT8183 and MT8186.

Applied 2-5, rest of them depend on the binding and dts patches to be
Acked.

-- 
viresh
