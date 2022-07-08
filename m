Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A857B56B43E
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 10:16:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237734AbiGHIOD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jul 2022 04:14:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237727AbiGHIOD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jul 2022 04:14:03 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C53A7358C
        for <devicetree@vger.kernel.org>; Fri,  8 Jul 2022 01:14:01 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id g4so21774341pgc.1
        for <devicetree@vger.kernel.org>; Fri, 08 Jul 2022 01:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=dl82gz8QjmANwna+I20UXlrSEeJ1+WO2UZanVzGM0so=;
        b=CZSXGcFDCZp9VbC5FmUr5/iPgXLOqnr+60QCezEU4A5g7VFUwLtvbvGa8psin8X/fE
         h1+wvf1+Wt1N/lOwTpaiF5YioutMWPJrueOuIoSV/+yXTurxCWx4ReXRFrpJPtQGxdDN
         aE6V7tWwwf9DV8sbReSdtVvCtMNBzAURZtL4em3QL5If7q/g19Lu+vhAAgOAS0vS/bQB
         QGnJI8M+V8YNTCzT4ObD8fvL3fUicj6stZainTO4eD/gQ5xoqKUdPR5T40Y1ZlUq8Kwx
         Zc7iYB8p67fW0y8LhnGzb0zwfY0/vRE7p8NCzgaczoUtVGHVjFENmXdvz6uFvKXLDcwA
         sSFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=dl82gz8QjmANwna+I20UXlrSEeJ1+WO2UZanVzGM0so=;
        b=PJiSQYS2q5LGHoYua99XSFXwXRggsX+D3aquR+BjhHMkfcTyeb5f8ImEdOZj+HcbXw
         h0fpHFoD42Tq5ao7v6QsU7hLEp1Gb5bouxOkempK4uMgjpX0rbQM1CkYxENAY3eK2Ffb
         DxEn0RNERPsZu0YprhFl1Waw39ylxexXzYggcXEpdvfYxkBgPgC3JWwDdwUc0F3gpSp+
         WTHa8oBshbK0pIWj9PP7mXy4oviekT+aYCDcVWPl+VKojGeQdoB5Mty2mI8ziqYxRPDn
         MI/62rryJnQ5z7v6l5xVptvT+dHQScSnVZSxInrMbM71zCDlbZg4ZsRDDQzEKCoqd9m4
         dI5g==
X-Gm-Message-State: AJIora+7HDHS2tKbslWwTBGdNd8mzLtIOSXxyBnIPLEs2DjrIl8Ij9Jh
        kKMd0JpzOjuBYeCulkqAeFz5Pw==
X-Google-Smtp-Source: AGRyM1u1VL9RI6muZTqV+yjUK0SBUkQP4Hy/5vLre7Pmw0+rdutvZOufYdaMHzt147Jc8SA1X+QKkQ==
X-Received: by 2002:a05:6a00:22cb:b0:525:ba83:559a with SMTP id f11-20020a056a0022cb00b00525ba83559amr2760170pfj.54.1657268041108;
        Fri, 08 Jul 2022 01:14:01 -0700 (PDT)
Received: from localhost ([122.171.18.80])
        by smtp.gmail.com with ESMTPSA id h7-20020a170902680700b0016bfbd99f64sm5766698plk.118.2022.07.08.01.14.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 01:14:00 -0700 (PDT)
Date:   Fri, 8 Jul 2022 13:43:58 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc:     Chanwoo Choi <cw00.choi@samsung.com>,
        Dmitry Osipenko <digetx@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Nishanth Menon <nm@ti.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Viresh Kumar <vireshk@kernel.org>, linux-pm@vger.kernel.org,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-tegra@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH V2 00/13] OPP: Add support for multiple clocks*
Message-ID: <20220708081358.o4ozv5qwf5xpqpb5@vireshk-i7>
References: <cover.1657003420.git.viresh.kumar@linaro.org>
 <d557bbd0-2afb-12dc-1287-1aeb44ef55f5@collabora.com>
 <20220708071926.zehurtbcf35s5tv6@vireshk-i7>
 <8c52e1d2-6c6d-9a09-e426-e5292f68a3f0@collabora.com>
 <f018df81-e51d-ce4f-f10a-65ea25db48e9@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f018df81-e51d-ce4f-f10a-65ea25db48e9@collabora.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08-07-22, 10:30, Dmitry Osipenko wrote:
> BTW, maybe we should consider to start adding kselftests for OPP, like
> clk framework did. That will be handy to have given that it's not easy
> to test the whole OPP core without having specific devices.

After being regularly bitten by such issues, I added some for cpufreq
earlier. Its time that I invest some time for OPP core too I think :)

I don't know though when I will be able to find time for that :(

-- 
viresh
