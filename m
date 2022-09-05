Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F0405AD4D0
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 16:30:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237081AbiIEOa0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 10:30:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237631AbiIEOaY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 10:30:24 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACA1C1B7BC
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 07:30:22 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id f15so6857643wrw.3
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 07:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=ae8ML73FokTDdM56La2MyV/2p8hGMBN9srggFyjW8tQ=;
        b=XwdlRG/EEWXKuCFQ376WfjDqS4YP5pf8yls07a1APgOhXHi1ywdPpHTzfl5TB3AS/K
         9aMh7Zp2XBsnR/5kqXPQFDc5WZPibnZ2D4yTFrRnqykCtPzumY7DkD6JgRCUvd8TEp7+
         eHs8+0AMNteH0KE4zVOBmyVjHqbIFM3lEveierW+stQOu3KT+8IECceY/KuDnLIjc9u1
         GDMt1UXwwIp0Zt2s/N2EHS1sx+qWYhHWXZp7zbr44pJ4JsIYeliBaVxtMLC4z0fL34ys
         ZfOTdrEA6ZHQh9irlVwGxvU/R+ZHXe0wGHpYgws+2PZLRlmte4YKDEFjiFEKooCyfYJU
         +Dhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=ae8ML73FokTDdM56La2MyV/2p8hGMBN9srggFyjW8tQ=;
        b=JbSsZgKpzhWfxfqVcqyIf2tXSel/gvtc1C7WZVgwTBWvuYh/3pmxQu+XetlMUx3x8N
         +F3wkQfoDqTDjEB+YO/AVBdD78B7dNciqwrsgi39BcDzWVcntFJHkiSS10nSNm6U+tPD
         HZMTFTSTO6o4QgbQ/OJOS70k2JpnEUY/vVA+rgp90p2Q/oQl006kiBsC52F1QEQ061Ec
         VSRcncyrT7TqyH2fom8rTsSJhbip2xS1n3tHN85xrsBZWJcQrVXMR4HDndXqCfIl5NQz
         CPBlsoeDy2epf3lyKaLj5RBei3y0pMIOiEUsCahVTmBwWKvrR1zmBSvmyeQDdZFc1puJ
         F4DA==
X-Gm-Message-State: ACgBeo0rDNIFIIB5k2rHKfvkyDtM4RxbrxNNgRK07wKlf4UInzNPY8Ja
        zE74FL2EDa8yMkR1QHIyoN+1jw==
X-Google-Smtp-Source: AA6agR5II3gm4fhl+EhygViYnzygeCdom5mIuMOv9w3YZhJLJ9MuBe86Eb0qlYM+mpe5LOTceolmbg==
X-Received: by 2002:a5d:574a:0:b0:228:b90c:e5ee with SMTP id q10-20020a5d574a000000b00228b90ce5eemr1682911wrw.328.1662388221254;
        Mon, 05 Sep 2022 07:30:21 -0700 (PDT)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id h21-20020a05600c351500b003a502c23f2asm18526327wmq.16.2022.09.05.07.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Sep 2022 07:30:20 -0700 (PDT)
Date:   Mon, 5 Sep 2022 17:30:19 +0300
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Amol Maheshwari <amahesh@qti.qualcomm.com>,
        devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v6 1/2] dt-bindings: misc: fastrpc convert bindings to
 yaml
Message-ID: <YxYH+3hGZ2fyUZpW@linaro.org>
References: <20220905103715.955786-1-abel.vesa@linaro.org>
 <1662381657.354400.1957044.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1662381657.354400.1957044.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-09-05 07:40:57, Rob Herring wrote:
> On Mon, 05 Sep 2022 13:37:14 +0300, Abel Vesa wrote:
> > Convert Qualcomm FastRPC bindings to yaml format, so that we could validate
> > dt-entries correctly and any future additions can go into yaml format.
> > 
> > Use compute-cb@ subnodes instead of just cb@.
> > 
> > Also add qcom,non-secure-domain, qcom,glink-channels and
> > qcom,smd-channels missing properties to make sure dtbs_check doesn't
> > fail right off the bat.
> > 
> > Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> > Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> > Co-developed-by: David Heidelberg <david@ixit.cz>
> > Signed-off-by: David Heidelberg <david@ixit.cz>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > 
> > Changes since v5:
> >  * Removed the txt file
> > 
> >  .../devicetree/bindings/misc/qcom,fastrpc.txt |  88 --------------
> >  .../bindings/misc/qcom,fastrpc.yaml           | 108 ++++++++++++++++++
> >  2 files changed, 108 insertions(+), 88 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/misc/qcom,fastrpc.txt
> >  create mode 100644 Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/misc/qcom,fastrpc.example.dtb: smd-edge: 'qcom,smd-edge' is a required property
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/qcom,smd-edge.yaml
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/misc/qcom,fastrpc.example.dtb: smd-edge: 'oneOf' conditional failed, one must be fixed:
> 	'mboxes' is a required property
> 	'qcom,ipc' is a required property
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/qcom,smd-edge.yaml
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/misc/qcom,fastrpc.example.dtb: smd-edge: 'oneOf' conditional failed, one must be fixed:
> 	'interrupts' is a required property
> 	'interrupts-extended' is a required property
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/qcom,smd-edge.yaml

Right.

So actually, the parent node is glink-edge, not smd-edge.

And there are some other required properties missing when switching to
glink-edge.

Will resend with glink-edge instead and add all the related missing
properties.

> 
> doc reference errors (make refcheckdocs):
> Documentation/devicetree/bindings/remoteproc/qcom,glink-edge.yaml: Documentation/devicetree/bindings/misc/qcom,fastrpc.txt
> MAINTAINERS: Documentation/devicetree/bindings/misc/qcom,fastrpc.txt
> 
> See https://patchwork.ozlabs.org/patch/
> 
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit.
> 
