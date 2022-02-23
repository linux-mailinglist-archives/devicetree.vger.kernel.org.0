Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0F744C0EE1
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 10:10:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238723AbiBWJKm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 04:10:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237127AbiBWJKm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 04:10:42 -0500
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A10F680235
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 01:10:14 -0800 (PST)
Received: by mail-pf1-x42c.google.com with SMTP id l19so14742366pfu.2
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 01:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wwEeIbVKRAFJc1IUROvg7itOrJyqhQC3kCceTm88ch8=;
        b=xoEiNPwmXke/nkZ+DHLML+rqVhZKfA5g2eNwCprpOPWpsB2mBdhm3r7fZWJm77ipkp
         vrMwX13qNO4zEY1fMqN/y0g0HIfiRkJlRB+JF7WVnmRR07Y7S8dnSjlfx4W3T2FjGywb
         lSvSAfrbHA3lDrBiL487sp/sc12pqGXt2qrhzgwQsl9UUaI0hLjJGLEGp75Xi4Y8Z5Za
         kbShy8E4rW66PdUgdyQCUgnTxUo0QFQNSdlIwWLybJYpYwm9OLT69Mo6vZAvNMDID8Yb
         sCwinct0dhRRhj+KkmJmQymMr3zrpInDNOgrkE7K8oakKrzmIMvORby4TNYYrmqM28u7
         YhZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wwEeIbVKRAFJc1IUROvg7itOrJyqhQC3kCceTm88ch8=;
        b=WLvpeJYxti5WM1i0j8MwFqanIiv3KNUyBPpu5VqbKlsJDCCtcu7GcnSRNQ9AnpBMkV
         bM/lA9AV6+H4sZ4l+UZjtphGaChMP1kYDB50elRqj8a3BjedVdHIoAN8+ZVI6lM9wnFQ
         7TNOD4D/4GDnUqVlDWy7PT/urY4Ed9RHZSQL490IMolPDkvDr5Frv+KLsNkgea8b2Z32
         rWtD1RIkPNSHbEvVka++Fz1e0+Y4qD9of+kBPGGPWL1OGBAqDO5GFniDmLyC8pkHS4XQ
         F/aClW8avAmNDugA96cU4O8creh0d5lKsDnz9NuDPXXTTcJWVhor2vxuVbfyxZ0Cfv4o
         HhUw==
X-Gm-Message-State: AOAM532mGorazAH7GpjIBw/RpuHPHVewQAoisgmAxorPoLbiREHrD4wF
        2qa8KqLJC3a+XiKHaKOHjXgIdw==
X-Google-Smtp-Source: ABdhPJxY3zmpRDrdJPFVLfKKYjvYzCca+xNI3tbn213m0TTlPNQfpWhFGnb77TgCu1ptREKSDnDGVw==
X-Received: by 2002:a63:9845:0:b0:375:5cc8:7d34 with SMTP id l5-20020a639845000000b003755cc87d34mr1002442pgo.124.1645607414211;
        Wed, 23 Feb 2022 01:10:14 -0800 (PST)
Received: from localhost ([223.184.83.228])
        by smtp.gmail.com with ESMTPSA id h4sm6269241pfo.81.2022.02.23.01.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Feb 2022 01:10:13 -0800 (PST)
Date:   Wed, 23 Feb 2022 14:40:12 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Lukasz Luba <lukasz.luba@arm.com>
Cc:     linux-kernel@vger.kernel.org, dietmar.eggemann@arm.com,
        rafael@kernel.org, daniel.lezcano@linaro.org, nm@ti.com,
        sboyd@kernel.org, mka@chromium.org, dianders@chromium.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: Re: [[PATCH v2 2/2] OPP: Add 'opp-microwatt' parsing for advanced EM
 registration
Message-ID: <20220223091012.w3flzpye6z55jnwd@vireshk-i7>
References: <20220222140746.12293-1-lukasz.luba@arm.com>
 <20220222140746.12293-3-lukasz.luba@arm.com>
 <20220223055357.t3wulpla64vt3xus@vireshk-i7>
 <b6682d6f-a6ae-8a82-68c3-13840c02d178@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b6682d6f-a6ae-8a82-68c3-13840c02d178@arm.com>
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

On 23-02-22, 08:59, Lukasz Luba wrote:
> OK, so you want to have this available for the whole system. I can do
> that. I would go for one value of power 

One value per supply, right ?

> and try to fit into the
> opp_parse_supplies() code.

Correct.

> As far as I can see in the
> dev_pm_opp_get_voltage() the simple solution: supplier[0] and u_volt
> is used. I would go for similar solution for u_watt.
> There is even a single u_amp and no _max, _min variants, so should be
> good..

Yes, I don't think we need min/max/target kind of naming here. Just a single
value per supply is enough.

-- 
viresh
