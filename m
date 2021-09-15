Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C41740C4E1
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 14:04:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237953AbhIOMF0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 08:05:26 -0400
Received: from mail-vs1-f49.google.com ([209.85.217.49]:43997 "EHLO
        mail-vs1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232927AbhIOMFS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Sep 2021 08:05:18 -0400
Received: by mail-vs1-f49.google.com with SMTP id n17so1824212vsr.10
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 05:04:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=V7RMs5jGTFlhcvPGA0e1hDyrGY0ltbNUmDTaYFkP2PQ=;
        b=qFWIhz1h5AXZV956+HU/GArhMZclP4vw1giT55v2mMGMPkVrG55nQWtpNeQIV59ug6
         9M4B83bXHCmDdyR51bpV4uzxFaKFNsbVbNWq7yIO+UUi6TaI9vG4fZBzwKX8YqmIeft2
         Z9kyImVXVsEWtMCvKgmORaEVpynQd+v4YxcNM3a4jxLRWhlUC55RL7pUsDEdqUID9wpE
         GWAXekt9/GTvE3l+owlXyWe9rgDKUDOeB5rzr+zhl8DDE+hVN8Hv15hzxzOGIQU7tHrv
         A8VCEto2sGsUXLT1yonpHZTJ2d0VmWFj5N8rRPq1mnkUp6aKBm0Qo8KEV7v8cYRjiSPR
         KoCw==
X-Gm-Message-State: AOAM5339Q+OuxOhIdyV7WkbtLrm5lGzLX5hz+nE7GQ3u9XzrjclRjSEN
        IbsigqoYzyfSCmu8MvlSw5v2TuwYY9tyOlb9KVU=
X-Google-Smtp-Source: ABdhPJwSSITFeO5bz1TDyTKf4Yo83/snpgk9r8c4pbnv7rl0it5La4y9XsWcpzM56ZSFV2DDynuhRmpZvBZ8JjUNNJg=
X-Received: by 2002:a05:6102:3112:: with SMTP id e18mr2846306vsh.50.1631707439508;
 Wed, 15 Sep 2021 05:03:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210911004546.2139657-1-drhodes@opensource.cirrus.com>
 <20210911004546.2139657-3-drhodes@opensource.cirrus.com> <1631535523.185638.444716.nullmailer@robh.at.kernel.org>
In-Reply-To: <1631535523.185638.444716.nullmailer@robh.at.kernel.org>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Wed, 15 Sep 2021 14:03:48 +0200
Message-ID: <CAMuHMdXvJju4SKreS8c2X47ew+8zshwxbhnJetyLLbGTo8tD5w@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] ASoC: cs35l41: Add bindings for CS35L41
To:     Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>
Cc:     David Rhodes <drhodes@opensource.cirrus.com>,
        ckeepax@opensource.cirrus.com,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        david.rhodes@cirrus.com, brian.austin@cirrus.com,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, patches@opensource.cirrus.com,
        ALSA Development Mailing List <alsa-devel@alsa-project.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 13, 2021 at 2:20 PM Rob Herring <robh@kernel.org> wrote:
> On Fri, 10 Sep 2021 19:45:46 -0500, David Rhodes wrote:
> > Devicetree binding documentation for CS35L41 driver
> >
> > CS35L41 is a 11-V Boosted Mono Class D Amplifier with
> > DSP Speaker Protection and Equalization
> >
> > Signed-off-by: David Rhodes <drhodes@opensource.cirrus.com>
> > ---
> >  .../devicetree/bindings/sound/cs35l41.yaml    | 151 ++++++++++++++++++
> >  1 file changed, 151 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/sound/cs35l41.yaml
> >
>
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/sound/cs35l41.yaml:151:9: [error] no new line character at the end of file (new-line-at-end-of-file)
>
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/cs35l41.yaml: 'additionalProperties' is a required property
>         hint: A schema without a "$ref" to another schema must define all properties and use "additionalProperties"
>         from schema $id: http://devicetree.org/meta-schemas/base.yaml#
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/cs35l41.yaml: ignoring, error in schema:
> warning: no schema found in file: ./Documentation/devicetree/bindings/sound/cs35l41.yaml
> Documentation/devicetree/bindings/sound/cs35l41.example.dts:21.11-21: Warning (reg_format): /example-0/cs35l41@2:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
> Documentation/devicetree/bindings/sound/cs35l41.example.dt.yaml: Warning (pci_device_reg): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/sound/cs35l41.example.dt.yaml: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/sound/cs35l41.example.dt.yaml: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/sound/cs35l41.example.dt.yaml: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/sound/cs35l41.example.dt.yaml: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/cs35l41.example.dt.yaml: example-0: cs35l41@2:reg:0: [2] is too short
>         From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
> Documentation/devicetree/bindings/sound/cs35l41.example.dt.yaml:0:0: /example-0/cs35l41@2: failed to match any schema with compatible: ['cirrus,cs35l41']

This is now commit 8d7ab8800184cc75 ("ASoC: cs35l41: Add bindings for
CS35L41") in broonie/sound#for-next, breaking "make dt_binding_check".

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
