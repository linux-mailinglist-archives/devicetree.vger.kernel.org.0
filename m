Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8622D68A9B9
	for <lists+devicetree@lfdr.de>; Sat,  4 Feb 2023 13:05:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231171AbjBDME5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Feb 2023 07:04:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230222AbjBDME4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Feb 2023 07:04:56 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CDA42CFC5
        for <devicetree@vger.kernel.org>; Sat,  4 Feb 2023 04:04:54 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id hx15so22070979ejc.11
        for <devicetree@vger.kernel.org>; Sat, 04 Feb 2023 04:04:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VJZ2Msh5Nw3OZVp8I5DmTv/Byr0mxPv189zfFca4S1w=;
        b=ezYrUiP81AFY2/olBsClDpr0Tk/hFLDm0PmrTa6KzAY5oEfQDIEJpS3oX6bC7+s23a
         a3/q9Y646JAywqIq4IEtyIYweQapPrbMcN+v97flYrkxf6o2IZTEtP17O+ruHaLvULJM
         Ms8RE05qktb/LzDU8BsZKmRgbFImRf75dFX1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VJZ2Msh5Nw3OZVp8I5DmTv/Byr0mxPv189zfFca4S1w=;
        b=buu0w+vBXcihVzozQ8kUYpVpLduO/ceWbWcFdC9s9GTRORe+xXwlJm23SYlOBu58Es
         hSHcuCV9/2cpImLNgJh+F/suqW5++BozhMa0eOlTei5FJRc7OS4VFvg0OFoW7D6HzhhD
         cW7pVW3SPBLQzsPD8eTeB0V3DymeH1fphWKb8OnCq5xCCQMSVKCPNJ2H0Ubn8au6dnzL
         rIKjaP0vKyXBfEdKenjcFuVebYRFkgkMbDpldMnrkMGvcT+lUoJOSSpy6AHopcF9OpGu
         PMBbDkDbo2IykeeCsYKmvSktQcViO8PbbqdVLZR5H14mOmlOBpJT4TUjylfbCTLzL8FQ
         IHcw==
X-Gm-Message-State: AO0yUKWhelPYZDgEe6f6w1uchh6yBvfjZxq4q1sIipIAxUxVEaC2pIre
        /zirg9Aeoc3/2XxeO4gWA0x3nfe4+C2bEWuAI11/Qw==
X-Google-Smtp-Source: AK7set995mrdJKaUvo/KETzS2yEQFT6BX5FSdB563gtOQ9DNm0Dgcci/PQXii1qLrg2iGQ2lhfsLBU5iH7lBQSssqcM=
X-Received: by 2002:a17:906:2651:b0:896:43bd:7915 with SMTP id
 i17-20020a170906265100b0089643bd7915mr160102ejc.93.1675512292355; Sat, 04 Feb
 2023 04:04:52 -0800 (PST)
MIME-Version: 1.0
References: <20230204001959.935268-1-sjg@chromium.org> <CALeDE9N2KSwA=HMLS9EPFL00UxxUgi=r_M8F7W2tWT6y+dMzeQ@mail.gmail.com>
In-Reply-To: <CALeDE9N2KSwA=HMLS9EPFL00UxxUgi=r_M8F7W2tWT6y+dMzeQ@mail.gmail.com>
From:   Simon Glass <sjg@chromium.org>
Date:   Sat, 4 Feb 2023 05:04:40 -0700
Message-ID: <CAPnjgZ297NH1oiRG9iU8=U0dSAnPLQ4WGYF7=+71aUZCYctWTA@mail.gmail.com>
Subject: Re: [PATCH] schemas: Add schema for firmware logs
To:     Peter Robinson <pbrobinson@gmail.com>
Cc:     devicetree@vger.kernel.org, Tom Rini <trini@konsulko.com>,
        Rob Herring <robh@kernel.org>,
        U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Peter,

On Sat, 4 Feb 2023 at 02:36, Peter Robinson <pbrobinson@gmail.com> wrote:
>
> Hi Simon,
>
> Does it make sense to devise something that is compatible with the
> kernel's pstore [1] mechanism?

Possibly...can you please be a little more specific?

Regards,
Simon

>
> Peter
>
> [1] https://lwn.net/Articles/434821/
>
> On Sat, Feb 4, 2023 at 12:20 AM Simon Glass <sjg@chromium.org> wrote:
> >
> > A common way to detect problems in firmware is to collect logs from
> > the firmware, then pass them to the OS for storage and analysis.
> >
> > Logs can take the form of simple text output, or structured logs where the
> > filename and line number, etc. are provided. Timestamps can sometimes be
> > useful, too.
> >
> > Ideally the log can be displayed as simple ASCII without always needing
> > a special program to read it.
> >
> > The firmware consists of various boot phases, any of which can contribute
> > log information. It is assumed that these logs are not interleaved, i.e.
> > that the phases run one after the other.
> >
> > The final boot phase (before the OS) is responsible for collecting the
> > logs, e.g. from a Transfer List, and placing them in the devicetree.
> >
> > This binding collects the logs as individual log@n subnodes within a
> > /chosen/logs node.
> >
> > If firmware phases use the devicetree to pass logs between each other,
> > then the /chosen node should still be used. The /options node is not
> > supported. Subsequent phases must be sure to use the next numbered
> > log@n node.
> >
> > If the log data is sitting in memory somewhere, it is possible to point
> > to it, rather than copying the data into a property. For large logs this
> > may be more efficient. It must end with a NUL character, so the total
> > space for actual log data is one byte less than the allocated size.
> >
> > If something goes wrong and an incomplete log record is emitted, then the
> > next record may appear to be part of it, since there is no LF or ETX
> > character at the end of the previous record.
> >
> > The intent with this binding is to provide a Linux driver which can
> > provide access to the log data after booting is complete.
> >
> > Other things not considered:
> > - signalling overflow of a log buffer
> > - circular log buffers
> > - a single unified log buffer with inline ASCII characters to indicate the
> >   phase and project
> > - log records that contain multiple lines of text
> >
> > Signed-off-by: Simon Glass <sjg@chromium.org>
> > ---
> >
> >  dtschema/schemas/chosen.yaml |   3 +
> >  dtschema/schemas/log.yaml    | 176 +++++++++++++++++++++++++++++++++++
> >  dtschema/schemas/logs.yaml   |  30 ++++++
> >  test/logs.dts                |  47 ++++++++++
> >  4 files changed, 256 insertions(+)
> >  create mode 100644 dtschema/schemas/log.yaml
> >  create mode 100644 dtschema/schemas/logs.yaml
> >  create mode 100644 test/logs.dts
> >
> > diff --git a/dtschema/schemas/chosen.yaml b/dtschema/schemas/chosen.yaml
> > index 86194dd..46cc9fb 100644
> > --- a/dtschema/schemas/chosen.yaml
> > +++ b/dtschema/schemas/chosen.yaml
> > @@ -236,6 +236,9 @@ properties:
> >        system.
> >
> >  patternProperties:
> > +  '^logs$':
> > +    $ref: logs.yaml#
> > +
> >    "^framebuffer": true
> >
> >  additionalProperties: false
> > diff --git a/dtschema/schemas/log.yaml b/dtschema/schemas/log.yaml
> > new file mode 100644
> > index 0000000..5218234
> > --- /dev/null
> > +++ b/dtschema/schemas/log.yaml
> > @@ -0,0 +1,176 @@
> > +# SPDX-License-Identifier: BSD-2-Clause
> > +# Copyright 2023 Google LLC
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/log.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Log-output binding
> > +
> > +maintainers:
> > +  - Simon Glass <sjg@chromium.org>
> > +
> > +description:
> > +  This holds a log file or console dump created by a single phase of the boot.
> > +  It typically consists of plain ASCII text, but it is also possible to
> > +  add metadata like files and line numbers.
> > +
> > +  Each log node has a hex unit address which indicates the order of progress
> > +  through the boot phases. The first node must be log@0, followed by
> > +  log@1, etc.
> > +
> > +select: false
> > +
> > +properties:
> > +  reg:
> > +    description:
> > +      Defines a unique log ID for the log represented by the log node.
> > +
> > +  boot-phase:
> > +    $ref: types.yaml#/definitions/string
> > +    description: |
> > +      Indicates the phase of boot which produced this log:
> > +
> > +        - pre-sram: Before SRAM is available
> > +        - verify: Verification step, which decides which of the available images
> > +          should be run next
> > +        - pre-ram: Sets up SDRAM
> > +        - some-ram: After SDRAM is working but before all of it is available.
> > +          Some RAM is available but it is limited (e.g. it may be split into
> > +          two pieces by the location of the running program) because the
> > +          program code is not yet relocated out of the way.
> > +        - loader: OS loader, typically the final firmware step
> > +
> > +    pattern: "^pre-sram|verify|pre-ram|some-ram|loader$"
> > +
> > +  project:
> > +    $ref: types.yaml#/definitions/string
> > +    description:
> > +      Indicates the name of the project which produced this log
> > +
> > +    pattern: "^U-Boot|TF-A"
> > +
> > +  time-format:
> > +    $ref: types.yaml#/definitions/string
> > +    description: |
> > +      Indicates the time format used by the log. Options are:
> > +
> > +        usec - a integer number of microseconds since reset was released,
> > +               expressed in ASCII, e.g. "123"
> > +
> > +    pattern: "^usec$"
> > +
> > +  text-start:
> > +    oneOf:
> > +      - $ref: types.yaml#/definitions/uint32
> > +      - $ref: types.yaml#/definitions/uint64
> > +    description:
> > +      These properties hold the physical start and end address of the log text
> > +      if the 'text' property is not used.
> > +
> > +      Note that text-start is inclusive, but text-end is exclusive.
> > +
> > +      The text must be terminated with a NUL character.
> > +
> > +  text-end:
> > +    oneOf:
> > +      - $ref: types.yaml#/definitions/uint32
> > +      - $ref: types.yaml#/definitions/uint64
> > +    description:
> > +      These properties hold the physical start and end address of the log text
> > +      if the 'text' property is not used.
> > +
> > +      Note that text-start is inclusive, but text-end is exclusive.
> > +
> > +      The text must be terminated with a NUL character.
> > +
> > +  text:
> > +    $ref: types.yaml#/definitions/string
> > +    description: |
> > +      Contains the log text, if it is not referred to by text-start / text-end.
> > +
> > +      The format is ASCII with US and SOT used to indicate optional fields:
> > +
> > +        [timestamp<US>][level[:category[:filename[:line[:function]]]]]<SOT>]message[<LF>|<ETX>]
> > +
> > +      where:
> > +
> > +        timestamp is the timestamp, according to time-format
> > +
> > +        level is the single-digit log level:
> > +           0 - emergency (program is unstable)
> > +           1 - alert (action must be taken immediately)
> > +           2 - crit (critical conditions)
> > +           3 - err (error that prevents something from working
> > +           4 - warning (may prevent optimal operation)
> > +           5 - notice (normal but significant condition, printf())
> > +           6 - info (general information message)
> > +           7 - debug (basic debug-level message)
> > +           8 - debug content (debug message showing full message content)
> > +           9 - debug I/O (debug message showing hardware I/O access)
> > +
> > +        category is the category name which is project-dependent
> > +
> > +        filename is the relative filename (__FILE__ in C)
> > +
> > +        line is the line number starting from 1 (__LINE__ in C)
> > +
> > +        function is the function name (__func__ in C)
> > +
> > +        message is the message string, which may not contain control
> > +        characters (beyond those listed above) except for HT and LF. DEL and CR
> > +        are not permitted.
> > +
> > +      The timestamp is present only if US is in the string.
> > +
> > +      The fields before <SOT> are all optional, but must be listed in order.
> > +      To omit a field in the middle, use an empty string between two colons.
> > +      To omit a field at the end, just leave it out along with the colon before
> > +      it.
> > +
> > +      Typically LF is used as a line delimiter, but if a record does not
> > +      end with a newline, ETX can be used. This indicates that it is a new
> > +      log record but without a newline between them. Often (but not always)
> > +      the 'continuation' does not include the US and SOT information.
> > +
> > +      A log record without a LF or ETX terminator is considered invalid, even
> > +      if it is the final record.
> > +
> > +      Examples:
> > +
> > +         123<US>5:tpm:lib/tpm.c:334:tpm_init<SOT>TPM starting...<LF>
> > +         23<US>Hello<LF>
> > +         2:boot:lib/panic.c:84:panic<SOT>Memory training failed<LF>
> > +         7:mmc:::mmc_bind<SOT>Cannot create block device<LF>
> > +         Net:   eth0: host_lo, eth1: host_enp1s0<ETX>
> > +
> > +      ASCII characters:
> > +
> > +        SOT - 0x2  - indicates the start of the message. This is optional if
> > +                     the record has nothing but a message
> > +        ETX - 0x3  - indicates the end of a log record (without new line)
> > +        LF  - 0xa  - indicates the end of a log record (and new line)
> > +        US  - 0x1f - indicates the end of the timestamp (and that it is present
> > +                     in the record)
> > +
> > +      The above format is intended to be unambiguous, while still being fairly
> > +      readable it just shown on a terminal with all control characters except
> > +      LF dropped. The CR character is not permitted since it is not needed to
> > +      signal an end of line and it avoids worrying about what <CR><LF> actually
> > +      means.
> > +
> > +      The text size is determined by the property size. The last byte must be
> > +      a NUL character.
> > +
> > +required:
> > +  - boot-phase
> > +  - project
> > +
> > +anyOf:
> > +  - required:
> > +    - text
> > +  - required:
> > +    - text-start
> > +    - text-end
> > +
> > +additionalProperties: false
> > diff --git a/dtschema/schemas/logs.yaml b/dtschema/schemas/logs.yaml
> > new file mode 100644
> > index 0000000..76ba2b0
> > --- /dev/null
> > +++ b/dtschema/schemas/logs.yaml
> > @@ -0,0 +1,30 @@
> > +# SPDX-License-Identifier: BSD-2-Clause
> > +# Copyright 2023 Google LLC
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/logs.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Log information collected during firmware execution
> > +
> > +maintainers:
> > +  - Simon Glass <sjg@chromium.org>
> > +
> > +description:
> > +  This holds a set of logs build up during booting of the machine. The
> > +  collection of logs is described in the "/logs" node.  This node in turn
> > +  contains a number of subnodes representing individual log output from
> > +  different boot phases.
> > +
> > +properties:
> > +  '#address-cells':
> > +    const: 1
> > +
> > +  '#size-cells':
> > +    const: 0
> > +
> > +patternProperties:
> > +  '^log@[0-9a-f]+$':
> > +    $ref: log.yaml#
> > +
> > +additionalProperties: false
> > diff --git a/test/logs.dts b/test/logs.dts
> > new file mode 100644
> > index 0000000..7d044df
> > --- /dev/null
> > +++ b/test/logs.dts
> > @@ -0,0 +1,47 @@
> > +// SPDX-License-Identifier: BSD-2-Clause
> > +// Copyright 2023 Google LLC
> > +
> > +// Used to validate the "logs" node and its child "log" nodes
> > +
> > +// dtc -O dtb -o test.dtb test/bootphases.dts && tools/dt-validate -s test/schemas -m test.dtb
> > +
> > +
> > +/dts-v1/;
> > +
> > +/ {
> > +       model = "none";
> > +       compatible = "foo";
> > +
> > +       #address-cells = <1>;
> > +       #size-cells = <1>;
> > +
> > +       chosen {
> > +               logs {
> > +                       #address-cells = <1>;
> > +                       #size-cells = <0>;
> > +
> > +                       log@0 {
> > +                               reg = <0>;
> > +                               boot-phase = "pre-ram";
> > +                               project = "U-Boot";
> > +                               text = "\nU-Boot SPL 2023.01 (Feb 03 2023 - 14:45:39 -0700)\nTrying to boot from sandbox_image\nTrying to boot from sandbox_file\n";
> > +                       };
> > +
> > +                       log@1 {
> > +                               reg = <1>;
> > +                               boot-phase = "loader";
> > +                               project = "U-Boot";
> > +                               time-format = "usec";
> > +                               text = "\n\n123\x1f2:boot:lib/display_options.c:43:display_options\x02U-Boot 2023.01 (Feb 03 2023 - 14:45:39 -0700)\n\nReset Status: COLD\nModel: sandbox\nDRAM:  256 MiB\n";
> > +                       };
> > +
> > +                       log@2 {
> > +                               reg = <2>;
> > +                               boot-phase = "pre-ram";
> > +                               project = "TF-A";
> > +                               text-start = <0x103000>;
> > +                               text-end = <0x107000>;
> > +                       };
> > +               };
> > +       };
> > +};
> > --
> > 2.39.1.519.gcb327c4b5f-goog
> >
