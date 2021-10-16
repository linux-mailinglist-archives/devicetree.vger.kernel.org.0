Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECFD643058F
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 01:09:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241097AbhJPXLo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Oct 2021 19:11:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241094AbhJPXLo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Oct 2021 19:11:44 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E41CEC061765
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 16:09:35 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id o204so18776719oih.13
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 16:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=XIUuxz/3xR9ZWSjRj8mW7HoeuGTklmNICX1U7YnsKBs=;
        b=eSSfyrfBbl1evd4GA7Pa+K4mPIg5doOQ6t94haIHujWkhVuBWMu2tgi6Fv0mZ8OklN
         2sAfoPKO3ySaVkRxWwf3Mp/DqBSNRfOsiKBw72l7gwzsw8rFuxc+NNjLXjsU001IBnsI
         LUtkgSdZ94bYRfhAooM2APfEuQ59WF+rXpNhL5r21DOa19ks0hn1+M5kgL7kVQQPbz0M
         JSRvs4Nl3Xj/oaKePwGZUrDT2I+Cz/wxvS3yXYfSwMr9aj+DvmGQAVLb2ApjOyVTIH7T
         wpfSz2GODBwYHUfg7NysbEPg64g2+1UwDPTxN9WMoBkn0HEL6Puyk12ihVGtwrJDJ3VO
         CfTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=XIUuxz/3xR9ZWSjRj8mW7HoeuGTklmNICX1U7YnsKBs=;
        b=l4JZo2Fekdm5wunzR6ZzeIl2qm6Expz2XW39z5lZiu4yxIymr1l3iFzkNsgDIzOcAt
         GQKu7KAX3SuEx47lRydU1y9kK3uPLVtzkxlTNkF/brWiFCeTWwvK6DY+Oc/3wBXcUshA
         aG6Sd/LdkWupapr05w+jtZ5Fvu8ZDr9jZfRyn9ESBx/RR8Vv8i7nl9iTMrHpelQs1Bmg
         GWiD+Va3VwnkzhAHUxYXPM1Wwew9nU8ZEBmk7q5DDwnXvf9y4YIdIOufkdFvqMcR9Qk1
         G4no0HVHXd8ObyEuolQnymGYHmyuNHGhyDaUV1eI306cEHgxQY0JTQMFpVZkLgP+x9YU
         o52w==
X-Gm-Message-State: AOAM532NSMfpUcKBmo5AUYlVcSb5CjbKZfbfzpzOzbeSryJUdfrYnzP3
        Fkj56IZqUBzYG9BFnc8dCgiuDA==
X-Google-Smtp-Source: ABdhPJxikg0PiixiDyXxda+GjtGQkG9GOCEnoswQ0EfU9If6Rmt8XfLX1iZeZPdh3OOToOAAtCkU2A==
X-Received: by 2002:a05:6808:1243:: with SMTP id o3mr14368224oiv.99.1634425775199;
        Sat, 16 Oct 2021 16:09:35 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id 38sm2098178oti.13.2021.10.16.16.09.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Oct 2021 16:09:34 -0700 (PDT)
Date:   Sat, 16 Oct 2021 18:09:32 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>, linux-phy@lists.infradead.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        Abhinav Kumar <abhinavk@codeaurora.org>,
        Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 2/2] phy: qcom: Introduce new eDP PHY driver
Message-ID: <YWtbrAlV9x3rLTsQ@builder.lan>
References: <20211015221312.1699043-1-bjorn.andersson@linaro.org>
 <20211015221312.1699043-2-bjorn.andersson@linaro.org>
 <CAA8EJpqGbiy_d1_RUoPiT0Jz0CgC5WaekkuJFXyzU7z7rkZChw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8EJpqGbiy_d1_RUoPiT0Jz0CgC5WaekkuJFXyzU7z7rkZChw@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat 16 Oct 11:36 CDT 2021, Dmitry Baryshkov wrote:

> On Sat, 16 Oct 2021 at 01:11, Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
[..]
> > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
[..]
> > +#define QSERDES_COM_SSC_EN_CENTER               0x0010
> > +#define QSERDES_COM_SSC_ADJ_PER1                0x0014
> > +#define QSERDES_COM_SSC_PER1                    0x001c
> > +#define QSERDES_COM_SSC_PER2                    0x0020
> > +#define QSERDES_COM_SSC_STEP_SIZE1_MODE0        0x0024
> > +#define QSERDES_COM_SSC_STEP_SIZE2_MODE0        0x0028
> 
> I think we might want to use register definitions from phy-qcom-qmp.h,
> so that it would be obvious, which generations are handled by the
> driver.
> 

I reviewed the all the registers and concluded that the QSERDES is V4,
so I included phy-qcom-qmp.h and used the SERDES_V4 defines instead.

The registers found in the PHY and LANE_TX blocks are specific to this
PHY, so I'm keeping these here.

[..]
> > +/*
> > + * Display Port PLL driver block diagram for branch clocks
> 
> Embedded DisplayPort
> 

Sounds good, I also updated the drawing below where suitable.

> > + *
> > + *              +------------------------------+
> > + *              |         DP_VCO_CLK           |
> > + *              |                              |
> > + *              |    +-------------------+     |
> > + *              |    |   (DP PLL/VCO)    |     |
> > + *              |    +---------+---------+     |
> > + *              |              v               |
> > + *              |   +----------+-----------+   |
[..]
> > +static struct clk_hw *
> > +qcom_edp_dp_clks_hw_get(struct of_phandle_args *clkspec, void *data)
> > +{
> > +       unsigned int idx = clkspec->args[0];
> > +       struct qcom_edp *edp = data;
> > +
> > +       if (idx >= 2) {
> > +               pr_err("%s: invalid index %u\n", __func__, idx);
> > +               return ERR_PTR(-EINVAL);
> > +       }
> > +
> > +       if (idx == 0)
> > +               return &edp->dp_link_hw;
> > +
> > +       return &edp->dp_pixel_hw;
> > +}
> 
> You might want to use of_clk_hw_onecell_get() instead of the special function.
> 

Yeah, that looks slightly cleaner.

> > +
> > +static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
> > +{
> > +       struct clk_init_data init = { };
> > +       int ret;
> > +
> > +       init.ops = &qcom_edp_dp_link_clk_ops;
> > +       init.name = "edp_phy_pll_link_clk";
> > +       edp->dp_link_hw.init = &init;
> > +       ret = devm_clk_hw_register(edp->dev, &edp->dp_link_hw);
> > +       if (ret)
> > +               return ret;
> > +
> > +       init.ops = &qcom_edp_dp_pixel_clk_ops;
> > +       init.name = "edp_phy_pll_vco_div_clk";
> > +       edp->dp_pixel_hw.init = &init;
> > +       ret = devm_clk_hw_register(edp->dev, &edp->dp_pixel_hw);
> > +       if (ret)
> > +               return ret;
> > +
> > +       return devm_of_clk_add_hw_provider(edp->dev, qcom_edp_dp_clks_hw_get, edp);
> > +}
[..]
> > +static struct platform_driver qcom_edp_phy_driver = {
> > +       .probe          = qcom_edp_phy_probe,
> > +       .driver = {
> > +               .name   = "qcom-edp-phy",
> > +               .of_match_table = qcom_edp_phy_match_table,
> > +       },
> > +};
> > +
> > +module_platform_driver(qcom_edp_phy_driver);
> > +
> > +MODULE_DESCRIPTION("Qualcomm eDP PHY driver");
> 
> Should we mention that it's a eDP QMP PHY driver in contrast to the
> old eDP from 8x74/8x84?
> 

Sure.

> Also MODULE_AUTHOR seems to be missing.
> 

Okay, I can add one of those.

Thanks,
Bjorn

> > +MODULE_LICENSE("GPL v2");
> > --
> > 2.29.2
> >
> 
> 
> -- 
> With best wishes
> Dmitry
