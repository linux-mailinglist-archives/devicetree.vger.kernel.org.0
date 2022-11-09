Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 462286221F8
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 03:33:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbiKICdr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 21:33:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229682AbiKICdq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 21:33:46 -0500
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com [IPv6:2607:f8b0:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FEC1D108
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 18:33:44 -0800 (PST)
Received: by mail-il1-x131.google.com with SMTP id d3so6404642ils.1
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 18:33:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rothemail-net.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TR4P+mVNEM3LsHTD9N9Kwqb4aem7iupUCwmq8ndALcY=;
        b=Itri3Ww9kmzqB+4GBlLNC7LKfP0XMfY0Si28qKE2BxYbfj6Yeg7iblkYzQBpIHKsAp
         lWrmfplNu9oH+O69FpmDhVgb/wVXygrOHYe52VHFSJMv5Z7YNNyAaQs2NykXkpekamTE
         PCT4dreHR6O7b37S8SgOBZ5LqBfsew+K2BIXKXTNfsKQTgN8x+GTmoSK3EV17UyzmSv/
         7EV0+TLszdkd7inXE3jVu7XRP87qdbssuopdGKmSqfMI7d1BMzlxSCM+7RjsDeBef1gt
         Z60v1e7grxFH+T6wXKYNLBvUdqAxHgoZ4OEdDfPfCXwXWnA+Q5ZM/HQmtLi76qxWT+0Z
         /BRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TR4P+mVNEM3LsHTD9N9Kwqb4aem7iupUCwmq8ndALcY=;
        b=XVlmWpqozFyf0sHY5nNGj8y9SfIlOt1OIVy9wDA+D6+rkYsEkLChvJZIsguVQH3K5M
         FXQpYm3wA6MeYa0prFoOJXZrY1P6C1wVczgG3GI02S7ZJ98gfXa3EsyijyUJaeXqT+Re
         7GMyshRCCy5NLbHw8WoV/OWOnXlb23Qo6qzs6UTUDHtHmMAtVqjAaUF+sP6VzoPHOP0a
         UosdoHjNmwRAZWStjHN3Fyia/w6Xl3e/dkK0XNdY4V4j/MZElyhBCgc+EDWbM3P97Oq4
         d5W4CzV4uB9eJtJVB7vP3GaZveJY6OmC+PGLLwkmaaxq/fwI7IbDlhHHBITCpT4edlrY
         E0Nw==
X-Gm-Message-State: ANoB5pnm1u1yS1rcJxWzY65s//VQGFXEewtZ+4uAktqc6+11Xagk1y9O
        j2p4X5hQuhLZPDcnTlfazqGRk3r9E7wl+qvEUBhw3A==
X-Google-Smtp-Source: AA0mqf76/rHlvgU3KzHHLPpDX8a//n9JkhHLtG373RCYLNAyEeqMQHYVw1AHm7lw1BfPYLdMrO4lvwIgiX9yBRWziD8=
X-Received: by 2002:a05:6e02:1747:b0:302:11f2:8796 with SMTP id
 y7-20020a056e02174700b0030211f28796mr6722204ill.214.1667961223099; Tue, 08
 Nov 2022 18:33:43 -0800 (PST)
MIME-Version: 1.0
References: <20221108033813.16502-1-nicholas@rothemail.net>
 <20221108033813.16502-2-nicholas@rothemail.net> <166791192485.3252530.2242777453866732728.robh@kernel.org>
In-Reply-To: <166791192485.3252530.2242777453866732728.robh@kernel.org>
From:   Nicholas Roth <nicholas@rothemail.net>
Date:   Tue, 8 Nov 2022 20:30:44 -0600
Message-ID: <CAD2rFCqmm5Lc8=tqMpH1nFXq8uhxFT+RMQn7W=Y5BiP=tMgUaA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: media: Add Omnivision ov8858 binding
To:     Rob Herring <robh@kernel.org>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I just rebased onto the latest master and here's what I got:
(base) nroth@nroth-pc:~/linux$ perl scripts/get_maintainer.pl
Documentation/devicetree/bindings/media/i2c/ov8858.yaml
Nicholas Roth <nicholas@rothemail.net> (odd fixer:OMNIVISION OV8858
SENSOR DRIVER,commit_signer:1/1=100%,authored:1/1=100%,in file)
Mauro Carvalho Chehab <mchehab@kernel.org> (maintainer:MEDIA INPUT
INFRASTRUCTURE (V4L/DVB))
Rob Herring <robh+dt@kernel.org> (maintainer:OPEN FIRMWARE AND
FLATTENED DEVICE TREE BINDINGS)
Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
(maintainer:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
linux-media@vger.kernel.org (open list:OMNIVISION OV8858 SENSOR DRIVER)
devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
DEVICE TREE BINDINGS)
linux-kernel@vger.kernel.org (open list)

Is this just your way of saying that I forgot Mauro or was there
something else too? Thanks for the catch-- indeed, I did.

> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
Well, that's embarrassing... I forgot to commit before running
git-send-email. Also, great to know about the linter! Indeed, there
were still some errors on my latest branch. Thanks for bearing with me
for now :). Sending a v2...

On Tue, Nov 8, 2022 at 6:54 AM Rob Herring <robh@kernel.org> wrote:
>
>
> On Mon, 07 Nov 2022 21:38:13 -0600, Nicholas Roth wrote:
> > Add a device tree binding for the Omnivision OV8858 image sensor.
> > The OV8858 is an 8 megapixel image sensor which provides images in RAW
> > format over MIPI CSI-2 data bus and is controlled through an
> > I2C-compatibile SCCB bus.
> >
> > Tested on PinePhone Pro with libcamera cam and qcam.
> >
> > Signed-off-by: Nicholas Roth <nicholas@rothemail.net>
> > ---
> >  .../bindings/i2c/ovti,ov8858-i2c.yaml         | 78 +++++++++++++++++++
> >  1 file changed, 78 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml
> >
>
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml: properties:compatible: 'ovti,ov8858' is not of type 'object', 'boolean'
>         from schema $id: http://json-schema.org/draft-07/schema#
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml: 'maintainers' is a required property
>         hint: Metaschema for devicetree binding documentation
>         from schema $id: http://devicetree.org/meta-schemas/base.yaml#
> ./Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml: $id: relative path/filename doesn't match actual path or filename
>         expected: http://devicetree.org/schemas/i2c/ovti,ov8858-i2c.yaml#
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml: ignoring, error in schema: properties: compatible
> Error: Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.example.dts:27.37-38 syntax error
> FATAL ERROR: Unable to parse input tree
> make[1]: *** [scripts/Makefile.lib:406: Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.example.dtb] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1492: dt_binding_check] Error 2
>
> doc reference errors (make refcheckdocs):
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
