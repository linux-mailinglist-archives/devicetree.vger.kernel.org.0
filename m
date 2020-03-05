Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AEBFB17A91E
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2020 16:43:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726822AbgCEPn2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Mar 2020 10:43:28 -0500
Received: from mail-ua1-f65.google.com ([209.85.222.65]:42761 "EHLO
        mail-ua1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726650AbgCEPn2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Mar 2020 10:43:28 -0500
Received: by mail-ua1-f65.google.com with SMTP id p2so2225207uao.9
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2020 07:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BtkP4rjLPJJ3tMCB0I86aLFGaPPlP5RT1g3Fl+k0ezY=;
        b=lKqr2+6Y70nMAQIyJl5JRc7tIiLa+hzIz7tEvf/tovFCfmf+e7RuHwdMVi4tryYNTD
         +pymGTN4XbCQi1CQ2PWP9jPf1sDURpvJEBqC59VhPJF1ZTtb8ifBnbcHDu7/o3b8UX+/
         BupJMhndJtlKuYaGJ/ZOifRB1mOciw3bd+8KEN2jkk5w0PbDET9x7GDPdVZcHA4HMCSU
         DIrYETeAQerh3c1CrVA3ipFhiuj7XLqCfmLKdZLc/gC2IxdYCTgy6CmtM3Qa7kLf6ltZ
         yiKe1i/cC5h5GYiBTHxi3IJSLiLC9sGHsOuncMXK3UHEnqsauLAX3vSUQXR1vMznxLBR
         Q4YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BtkP4rjLPJJ3tMCB0I86aLFGaPPlP5RT1g3Fl+k0ezY=;
        b=qgF47j+BTk1YuW+zCt1+kjcPLvo1xi3Qgex9vLEcPDZ3mDDt+LVrBVlAvi8T1Hfp3R
         Y6KroXtsbSz4m9doNIc1zpzgQ222fZUy2aLfX38SDTHsTuc1gYcpff8Yl3Y05pSVzEY+
         3rzWROSgSQXETIe8V51+cKgrd3Hp3H2tM3Dbrmmo3Zh0cbFx3L1bWaG6hH5uXmM7N8fY
         unG8mb+Wir0hlcf9+7wVDKPS57LovjMmqvuku43uFGyh6pwKFKVp7d1bD08KzL5MxfuH
         EP3lhX0QnU39/DkudvRe8SN6TQDyLHZ3DNIxQR9bBA2HlSdJHWdm32uZme5z8dnif0De
         nS4A==
X-Gm-Message-State: ANhLgQ1Ba7sYE+q2KGcb9y7Mcvj1t8CvLJDXp5u3oJ2TbC4l9TGTX2Pm
        VJNt8lwZTepWsQrUAGo4p2a72LBy3+lqiHxhdYQGwQ==
X-Google-Smtp-Source: ADFU+vtnAS2M6fsz0X4CPT/qujFk6wJUPdYM8Pmr5JuuT0heSqdLkpUK6njwODFUJ11mFbZK5GofJhtZiCjNvuUC940=
X-Received: by 2002:ab0:7518:: with SMTP id m24mr4824318uap.60.1583423006775;
 Thu, 05 Mar 2020 07:43:26 -0800 (PST)
MIME-Version: 1.0
References: <cover.1582528977.git.amit.kucheria@linaro.org>
 <59d24f8ec98e29d119c5cbdb2abe6d4644cc51cf.1582528977.git.amit.kucheria@linaro.org>
 <20200224184003.GA3607@bogus> <CAHLCerP1_xESMbLuSBsVz1XkrA0j_okbX+SxbefVSo4ttvX_fg@mail.gmail.com>
 <CAL_JsqK_8MbxwKb9D4U0Cfv1m61zHWku4hJwiLaeOO6wkS8WCQ@mail.gmail.com>
In-Reply-To: <CAL_JsqK_8MbxwKb9D4U0Cfv1m61zHWku4hJwiLaeOO6wkS8WCQ@mail.gmail.com>
From:   Amit Kucheria <amit.kucheria@linaro.org>
Date:   Thu, 5 Mar 2020 21:13:15 +0530
Message-ID: <CAHLCerOeSx2hkB5QUhj_iK1sU=X9EWFLVgof2XsLhhy3CmbpNg@mail.gmail.com>
Subject: Re: [RFC PATCH v1 3/3] dt-bindings: thermal: Add yaml bindings for
 thermal zones
To:     Rob Herring <robh@kernel.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Linux PM list <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 5, 2020 at 9:08 PM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Mar 5, 2020 at 6:50 AM Amit Kucheria <amit.kucheria@linaro.org> wrote:
> >
> > On Tue, Feb 25, 2020 at 12:10 AM Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Mon, 24 Feb 2020 12:55:37 +0530, Amit Kucheria wrote:
> > > > As part of moving the thermal bindings to YAML, split it up into 3
> > > > bindings: thermal sensors, cooling devices and thermal zones.
> > > >
> > > > The thermal-zone binding is a software abstraction to capture the
> > > > properties of each zone - how often they should be checked, the
> > > > temperature thresholds (trips) at which mitigation actions need to be
> > > > taken and the level of mitigation needed at those thresholds.
> > > >
> > > > Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> > > > ---
> > > >  .../bindings/thermal/thermal-zones.yaml       | 302 ++++++++++++++++++
> > > >  1 file changed, 302 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/thermal/thermal-zones.yaml
> > > >
> > >
> > > My bot found errors running 'make dt_binding_check' on your patch:
> > >
> > > Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
> >
> > This one isn't due to my patch, I believe.
>
> Right, that's the one known warning...
>
> > > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/thermal/thermal-zones.example.dt.yaml: thermal-sensor@c263000: interrupt-names: ['uplow'] is too short
> > > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/thermal/thermal-zones.example.dt.yaml: thermal-sensor@c263000: interrupts: [[0, 506, 4]] is too short
> > > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/thermal/thermal-zones.example.dt.yaml: thermal-sensor@c265000: interrupt-names: ['uplow'] is too short
> > > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/thermal/thermal-zones.example.dt.yaml: thermal-sensor@c265000: interrupts: [[0, 507, 4]] is too short
> >
> > Fixed. Just for my information, did the check somehow figure out that
> > this (incomplete) example needed the qcom-tsens.yaml binding (based on
> > compatible string?) and then apply those rules to throw this error?
>
> Yes. And setting DT_SCHEMA_FILES did change that to only check with
> the specified schema file. However, that's now changed in linux-next
> such that examples are always checked by all schemas and
> DT_SCHEMA_FILES just limits which bindings to build and check.

DT_SCHEMA_FILES doesn't seem to take wildcards. Individual yaml files
worked fine.

$ make -k -j`nproc` ARCH=arm64 CROSS_COMPILE="ccache
aarch64-linux-gnu-" O=~/work/builds/build-aarch64/ dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/thermal/thermal*.yaml
make[1]: Entering directory '/home/amit/work/builds/build-aarch64'
make[2]: Circular
Documentation/devicetree/bindings/processed-schema.yaml <-
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dt.yaml
dependency dropped.
make[2]: Circular
Documentation/devicetree/bindings/thermal/thermal-zones.example.dt.yaml
<- Documentation/devicetree/bindings/processed-schema.yaml dependency
dropped.
make[2]: Circular
Documentation/devicetree/bindings/thermal/thermal-cooling-devices.example.dt.yaml
<- Documentation/devicetree/bindings/processed-schema.yaml dependency
dropped.
  SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
Traceback (most recent call last):
  File "/home/amit/.local/bin/dt-mk-schema", line 7, in <module>
    exec(compile(f.read(), __file__, 'exec'))
  File "/home/amit/work/sources/tools-dt-schema.git/tools/dt-mk-schema",
line 32, in <module>
    schemas = dtschema.process_schemas(args.schemas, core_schema=(not
args.useronly))
  File "/home/amit/work/sources/tools-dt-schema.git/dtschema/lib.py",
line 475, in process_schemas
    sch = process_schema(os.path.abspath(filename))
  File "/home/amit/work/sources/tools-dt-schema.git/dtschema/lib.py",
line 435, in process_schema
    DTValidator.check_schema(schema)
  File "/home/amit/work/sources/tools-dt-schema.git/dtschema/lib.py",
line 582, in check_schema
    meta_schema = cls.resolver.resolve_from_url(schema['$schema'])
TypeError: list indices must be integers or slices, not str
make[2]: *** [/home/amit/work/sources/linux-amit.git/Documentation/devicetree/bindings/Makefile:34:
Documentation/devicetree/bindings/processed-schema.yaml] Error 1
make[2]: Target '__build' not remade because of errors.
make[1]: *** [/home/amit/work/sources/linux-amit.git/Makefile:1262:
dt_binding_check] Error 2
make[1]: Leaving directory '/home/amit/work/builds/build-aarch64'
make: *** [Makefile:179: sub-make] Error 2
make: Target 'dt_binding_check' not remade because of errors.
