Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D8BF65265D
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 19:37:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233959AbiLTShu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 13:37:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231638AbiLTShs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 13:37:48 -0500
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3870865EF
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 10:37:47 -0800 (PST)
Received: by mail-ot1-f48.google.com with SMTP id m6-20020a9d7e86000000b0066ec505ae93so7672230otp.9
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 10:37:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KoviNMmRztvrnTdTxtX2BvsWkdyi/rY29nWD3o8MDP0=;
        b=Jy6zh6AEXoN+35sJumPwQkc8V42Cn2hu8KL+jbz94JpRdZwiAtQ6SMv+Xg0RRzxV2l
         EARkGahg/gZUb/Hmf08KH7GrRT6uvKxh3oUquDWLUznWi0iNv/Mj3P0vMrSl3NTtwnos
         EjaOYXkm6HO4NusEpy+vdL+cHugz1PU0GEt8TgZR0RmgmwyLTj16pJPW5Aqh/SrcfqSx
         Mi/MmQAE01k5x8vAM1lNc/evUyquy/rsaxv9Iyt0DxhlwgX+rw6cCkWqSHcdkubboBZj
         uhQhnnitFwRbAS+5wMqin3SFuibRgkLnPAxS6ZEJjbe4vz2PJtdjR7OY+Fkgo9TFv2+w
         L7TA==
X-Gm-Message-State: ANoB5pmJ7xYdvHj3nBIlCanuIlqn/KoOpYq1RIDompELirM9L8EG/MuS
        N4/A6TFNnt3yuU417LfXLg==
X-Google-Smtp-Source: AA0mqf4fbq+CC1GT+iWrYgGLRFEjR6y5kypDTo+wiR/FIlXwQLOJgUh8sQAGOHbhRLCFAniLGWjX9A==
X-Received: by 2002:a05:6830:349f:b0:66e:c096:126c with SMTP id c31-20020a056830349f00b0066ec096126cmr23752385otu.29.1671561466386;
        Tue, 20 Dec 2022 10:37:46 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a23-20020a9d6e97000000b0066ca9001e68sm5959496otr.5.2022.12.20.10.37.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 10:37:45 -0800 (PST)
Received: (nullmailer pid 882087 invoked by uid 1000);
        Tue, 20 Dec 2022 18:37:45 -0000
Date:   Tue, 20 Dec 2022 12:37:45 -0600
From:   Rob Herring <robh@kernel.org>
To:     Liu Ying <victor.liu@nxp.com>
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Marek Vasut <marex@denx.de>, patchwork-lst@pengutronix.de,
        Philipp Zabel <p.zabel@pengutronix.de>, Sandor.yu@nxp.com
Subject: Re: [PATCH v2 1/4] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI TX
Message-ID: <20221220183745.GB860843-robh@kernel.org>
References: <20221216210742.3233382-1-l.stach@pengutronix.de>
 <d0c9ecebc466f8e08a697cb041064199ff09fb44.camel@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d0c9ecebc466f8e08a697cb041064199ff09fb44.camel@nxp.com>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Dec 17, 2022 at 03:40:24PM +0800, Liu Ying wrote:
> Hi Lucas,
> 
> On Fri, 2022-12-16 at 22:07 +0100, Lucas Stach wrote:
> > The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> > core with a little bit of SoC integration around it.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml | 69
> > +++++++++++++++++++
> >  1 file changed, 69 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> > 
> > diff --git
> > a/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> > b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> > new file mode 100644
> > index 000000000000..75ebeaa8c9d5
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-
> > hdmi.yaml
> > @@ -0,0 +1,69 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/imx/fsl,imx8mp-hdmi.yaml#
> 
> Better to put the binding documentation under the display/bridge
> umbrella as the corresponding linux driver is a DRM bridge driver, not
> a DRM encoder driver.

Bridge vs. encoder is not a distinction I would make for bindings. It 
would be better if all the HDMI encoders/bridges were grouped together 
rather than in vendor silos/directories. But that's a much bigger 
restructuring and fsl,imx6-hdmi.yaml is already here.

> 
> Regarding the file name, I would use 'fsl,imx8mp-hdmi-tx.yaml' to
> explicitly tell it's a TX controller(not a RX controller), which
> matches the chapter name 'HDMI TX controller' in i.MX8mp RM.
> 
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Freescale i.MX8MP DWC HDMI TX Encoder
> > +
> > +maintainers:
> > +  - Lucas Stach <l.stach@pengutronix.de>
> > +
> > +description: |
> > +  The i.MX8MP HDMI transmitter is a Synopsys DesignWare
> > +  HDMI 2.0 TX controller IP.
> 
> i.MX8mp RM says it is compatible with the HDMI v2.0a spec, so better to
> mention 2.0a instead of 2.0.
> 
> > +
> > +allOf:
> > +  - $ref: ../bridge/synopsys,dw-hdmi.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - fsl,imx8mp-hdmi
> 
> Like the file name, I would use 'fsl,imx8mp-hdmi-tx'.
> 
> It seems that the i.MX6q DW HDMI TX controller will not easily use this
> binding since it's corresponding driver is a DRM encoder driver, and no
> other i.MX SoCs embed the controller, so use const instead of enum(It
> can be changed to enum when necessary later.)?

That shouldn't matter for bindings. I do expect the 'ports' will be a 
bit different, so probably not worth trying to combine the schema.

Rob
