Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF65E68A939
	for <lists+devicetree@lfdr.de>; Sat,  4 Feb 2023 10:36:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231477AbjBDJgH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Feb 2023 04:36:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230187AbjBDJgG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Feb 2023 04:36:06 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0860634010
        for <devicetree@vger.kernel.org>; Sat,  4 Feb 2023 01:36:04 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id y25so11061658lfa.9
        for <devicetree@vger.kernel.org>; Sat, 04 Feb 2023 01:36:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FAEa+0U8/29+QpchshYSPk5G10fx0n63aEUF6ICpeWQ=;
        b=jZAHVWUf/Eh//WTh0DBtkcQuexdZfAv96SLH+T8M2APybj1biQUFcJ0mQgoGVWacew
         UY4sW/JAbLImiD6uAYWds36QeiJSWPPQc/8NKKkucsfO8pnMSllZE0E0MVbnBqG5ZJIp
         MfYrlsLKxbm4Zfo7Ry8t0ArKPeWNvAEY6QPc3yXzL8GfJ5Lz/7GIv1rDHyrGXdCxZ7Sa
         6JXI1cxNvo/IFU9StpE9EhG5m4A3ZCf3piVzEkEpt3nuIyiy0FmdygusOnA469MsXP/O
         MBIhOWQvCuExuck1pI20vncKx29WkxR0v5Yyf3n07ZDANQ1ycYCaWz9Iwb0/FQrHbDFv
         S6Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FAEa+0U8/29+QpchshYSPk5G10fx0n63aEUF6ICpeWQ=;
        b=dFWQDVLaQFQHg99p6Y+Pv2VCmEGSvjVnTGeYhBsiaU42uP27eVLbXZTRe9xscv87eZ
         rmBwuy2UJ0S/8dQc8mvUqNfJ5NDqbvljZJre+/ws5ACGj/R1wK66o65c4y0m0G/oHaEV
         agohG1VlxiKnP++OHC+lxLlfjGfHeajQsfbtqk1qfArSqv4X5+V7xXV30n1UuoE1aJd8
         9bipSS1tNPi2KITdIoO0h2D2Gsl/sQIXqe16URWCUhQzX5z4BTdvcO56bZ0csUX/Nu5q
         5vc2NVpYRyPDBl+O83ghVL/qTHLQDynOA2/sFKC/R2G+oxicJJhQPR7ccIRzLv1Zf//C
         /26w==
X-Gm-Message-State: AO0yUKU5A7shq9FwP0nOnL4ixvIHexGvZ/PAPtyFvr9CqlVXbZD+zUop
        SYTD+B1YD7Banbf9o4gqw8DRLcV+igmUPsOki2M=
X-Google-Smtp-Source: AK7set8WKAE6F+0QzSHjoChUxIW2ILZzUt/o6lrehQlzop1OmF1DTu1wVsj1EkNz/0NOH5vcJn4CbmQ8n5kUbRzd0KE=
X-Received: by 2002:a19:6517:0:b0:4cc:66d4:41a0 with SMTP id
 z23-20020a196517000000b004cc66d441a0mr2297285lfb.21.1675503362162; Sat, 04
 Feb 2023 01:36:02 -0800 (PST)
MIME-Version: 1.0
References: <20230204001959.935268-1-sjg@chromium.org>
In-Reply-To: <20230204001959.935268-1-sjg@chromium.org>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Sat, 4 Feb 2023 09:35:50 +0000
Message-ID: <CALeDE9N2KSwA=HMLS9EPFL00UxxUgi=r_M8F7W2tWT6y+dMzeQ@mail.gmail.com>
Subject: Re: [PATCH] schemas: Add schema for firmware logs
To:     Simon Glass <sjg@chromium.org>
Cc:     devicetree@vger.kernel.org, Tom Rini <trini@konsulko.com>,
        Rob Herring <robh@kernel.org>,
        U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Simon,

Does it make sense to devise something that is compatible with the
kernel's pstore [1] mechanism?

Peter

[1] https://lwn.net/Articles/434821/

On Sat, Feb 4, 2023 at 12:20 AM Simon Glass <sjg@chromium.org> wrote:
>
> A common way to detect problems in firmware is to collect logs from
> the firmware, then pass them to the OS for storage and analysis.
>
> Logs can take the form of simple text output, or structured logs where the
> filename and line number, etc. are provided. Timestamps can sometimes be
> useful, too.
>
> Ideally the log can be displayed as simple ASCII without always needing
> a special program to read it.
>
> The firmware consists of various boot phases, any of which can contribute
> log information. It is assumed that these logs are not interleaved, i.e.
> that the phases run one after the other.
>
> The final boot phase (before the OS) is responsible for collecting the
> logs, e.g. from a Transfer List, and placing them in the devicetree.
>
> This binding collects the logs as individual log@n subnodes within a
> /chosen/logs node.
>
> If firmware phases use the devicetree to pass logs between each other,
> then the /chosen node should still be used. The /options node is not
> supported. Subsequent phases must be sure to use the next numbered
> log@n node.
>
> If the log data is sitting in memory somewhere, it is possible to point
> to it, rather than copying the data into a property. For large logs this
> may be more efficient. It must end with a NUL character, so the total
> space for actual log data is one byte less than the allocated size.
>
> If something goes wrong and an incomplete log record is emitted, then the
> next record may appear to be part of it, since there is no LF or ETX
> character at the end of the previous record.
>
> The intent with this binding is to provide a Linux driver which can
> provide access to the log data after booting is complete.
>
> Other things not considered:
> - signalling overflow of a log buffer
> - circular log buffers
> - a single unified log buffer with inline ASCII characters to indicate the
>   phase and project
> - log records that contain multiple lines of text
>
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
>
>  dtschema/schemas/chosen.yaml |   3 +
>  dtschema/schemas/log.yaml    | 176 +++++++++++++++++++++++++++++++++++
>  dtschema/schemas/logs.yaml   |  30 ++++++
>  test/logs.dts                |  47 ++++++++++
>  4 files changed, 256 insertions(+)
>  create mode 100644 dtschema/schemas/log.yaml
>  create mode 100644 dtschema/schemas/logs.yaml
>  create mode 100644 test/logs.dts
>
> diff --git a/dtschema/schemas/chosen.yaml b/dtschema/schemas/chosen.yaml
> index 86194dd..46cc9fb 100644
> --- a/dtschema/schemas/chosen.yaml
> +++ b/dtschema/schemas/chosen.yaml
> @@ -236,6 +236,9 @@ properties:
>        system.
>
>  patternProperties:
> +  '^logs$':
> +    $ref: logs.yaml#
> +
>    "^framebuffer": true
>
>  additionalProperties: false
> diff --git a/dtschema/schemas/log.yaml b/dtschema/schemas/log.yaml
> new file mode 100644
> index 0000000..5218234
> --- /dev/null
> +++ b/dtschema/schemas/log.yaml
> @@ -0,0 +1,176 @@
> +# SPDX-License-Identifier: BSD-2-Clause
> +# Copyright 2023 Google LLC
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/log.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Log-output binding
> +
> +maintainers:
> +  - Simon Glass <sjg@chromium.org>
> +
> +description:
> +  This holds a log file or console dump created by a single phase of the boot.
> +  It typically consists of plain ASCII text, but it is also possible to
> +  add metadata like files and line numbers.
> +
> +  Each log node has a hex unit address which indicates the order of progress
> +  through the boot phases. The first node must be log@0, followed by
> +  log@1, etc.
> +
> +select: false
> +
> +properties:
> +  reg:
> +    description:
> +      Defines a unique log ID for the log represented by the log node.
> +
> +  boot-phase:
> +    $ref: types.yaml#/definitions/string
> +    description: |
> +      Indicates the phase of boot which produced this log:
> +
> +        - pre-sram: Before SRAM is available
> +        - verify: Verification step, which decides which of the available images
> +          should be run next
> +        - pre-ram: Sets up SDRAM
> +        - some-ram: After SDRAM is working but before all of it is available.
> +          Some RAM is available but it is limited (e.g. it may be split into
> +          two pieces by the location of the running program) because the
> +          program code is not yet relocated out of the way.
> +        - loader: OS loader, typically the final firmware step
> +
> +    pattern: "^pre-sram|verify|pre-ram|some-ram|loader$"
> +
> +  project:
> +    $ref: types.yaml#/definitions/string
> +    description:
> +      Indicates the name of the project which produced this log
> +
> +    pattern: "^U-Boot|TF-A"
> +
> +  time-format:
> +    $ref: types.yaml#/definitions/string
> +    description: |
> +      Indicates the time format used by the log. Options are:
> +
> +        usec - a integer number of microseconds since reset was released,
> +               expressed in ASCII, e.g. "123"
> +
> +    pattern: "^usec$"
> +
> +  text-start:
> +    oneOf:
> +      - $ref: types.yaml#/definitions/uint32
> +      - $ref: types.yaml#/definitions/uint64
> +    description:
> +      These properties hold the physical start and end address of the log text
> +      if the 'text' property is not used.
> +
> +      Note that text-start is inclusive, but text-end is exclusive.
> +
> +      The text must be terminated with a NUL character.
> +
> +  text-end:
> +    oneOf:
> +      - $ref: types.yaml#/definitions/uint32
> +      - $ref: types.yaml#/definitions/uint64
> +    description:
> +      These properties hold the physical start and end address of the log text
> +      if the 'text' property is not used.
> +
> +      Note that text-start is inclusive, but text-end is exclusive.
> +
> +      The text must be terminated with a NUL character.
> +
> +  text:
> +    $ref: types.yaml#/definitions/string
> +    description: |
> +      Contains the log text, if it is not referred to by text-start / text-end.
> +
> +      The format is ASCII with US and SOT used to indicate optional fields:
> +
> +        [timestamp<US>][level[:category[:filename[:line[:function]]]]]<SOT>]message[<LF>|<ETX>]
> +
> +      where:
> +
> +        timestamp is the timestamp, according to time-format
> +
> +        level is the single-digit log level:
> +           0 - emergency (program is unstable)
> +           1 - alert (action must be taken immediately)
> +           2 - crit (critical conditions)
> +           3 - err (error that prevents something from working
> +           4 - warning (may prevent optimal operation)
> +           5 - notice (normal but significant condition, printf())
> +           6 - info (general information message)
> +           7 - debug (basic debug-level message)
> +           8 - debug content (debug message showing full message content)
> +           9 - debug I/O (debug message showing hardware I/O access)
> +
> +        category is the category name which is project-dependent
> +
> +        filename is the relative filename (__FILE__ in C)
> +
> +        line is the line number starting from 1 (__LINE__ in C)
> +
> +        function is the function name (__func__ in C)
> +
> +        message is the message string, which may not contain control
> +        characters (beyond those listed above) except for HT and LF. DEL and CR
> +        are not permitted.
> +
> +      The timestamp is present only if US is in the string.
> +
> +      The fields before <SOT> are all optional, but must be listed in order.
> +      To omit a field in the middle, use an empty string between two colons.
> +      To omit a field at the end, just leave it out along with the colon before
> +      it.
> +
> +      Typically LF is used as a line delimiter, but if a record does not
> +      end with a newline, ETX can be used. This indicates that it is a new
> +      log record but without a newline between them. Often (but not always)
> +      the 'continuation' does not include the US and SOT information.
> +
> +      A log record without a LF or ETX terminator is considered invalid, even
> +      if it is the final record.
> +
> +      Examples:
> +
> +         123<US>5:tpm:lib/tpm.c:334:tpm_init<SOT>TPM starting...<LF>
> +         23<US>Hello<LF>
> +         2:boot:lib/panic.c:84:panic<SOT>Memory training failed<LF>
> +         7:mmc:::mmc_bind<SOT>Cannot create block device<LF>
> +         Net:   eth0: host_lo, eth1: host_enp1s0<ETX>
> +
> +      ASCII characters:
> +
> +        SOT - 0x2  - indicates the start of the message. This is optional if
> +                     the record has nothing but a message
> +        ETX - 0x3  - indicates the end of a log record (without new line)
> +        LF  - 0xa  - indicates the end of a log record (and new line)
> +        US  - 0x1f - indicates the end of the timestamp (and that it is present
> +                     in the record)
> +
> +      The above format is intended to be unambiguous, while still being fairly
> +      readable it just shown on a terminal with all control characters except
> +      LF dropped. The CR character is not permitted since it is not needed to
> +      signal an end of line and it avoids worrying about what <CR><LF> actually
> +      means.
> +
> +      The text size is determined by the property size. The last byte must be
> +      a NUL character.
> +
> +required:
> +  - boot-phase
> +  - project
> +
> +anyOf:
> +  - required:
> +    - text
> +  - required:
> +    - text-start
> +    - text-end
> +
> +additionalProperties: false
> diff --git a/dtschema/schemas/logs.yaml b/dtschema/schemas/logs.yaml
> new file mode 100644
> index 0000000..76ba2b0
> --- /dev/null
> +++ b/dtschema/schemas/logs.yaml
> @@ -0,0 +1,30 @@
> +# SPDX-License-Identifier: BSD-2-Clause
> +# Copyright 2023 Google LLC
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/logs.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Log information collected during firmware execution
> +
> +maintainers:
> +  - Simon Glass <sjg@chromium.org>
> +
> +description:
> +  This holds a set of logs build up during booting of the machine. The
> +  collection of logs is described in the "/logs" node.  This node in turn
> +  contains a number of subnodes representing individual log output from
> +  different boot phases.
> +
> +properties:
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +patternProperties:
> +  '^log@[0-9a-f]+$':
> +    $ref: log.yaml#
> +
> +additionalProperties: false
> diff --git a/test/logs.dts b/test/logs.dts
> new file mode 100644
> index 0000000..7d044df
> --- /dev/null
> +++ b/test/logs.dts
> @@ -0,0 +1,47 @@
> +// SPDX-License-Identifier: BSD-2-Clause
> +// Copyright 2023 Google LLC
> +
> +// Used to validate the "logs" node and its child "log" nodes
> +
> +// dtc -O dtb -o test.dtb test/bootphases.dts && tools/dt-validate -s test/schemas -m test.dtb
> +
> +
> +/dts-v1/;
> +
> +/ {
> +       model = "none";
> +       compatible = "foo";
> +
> +       #address-cells = <1>;
> +       #size-cells = <1>;
> +
> +       chosen {
> +               logs {
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +
> +                       log@0 {
> +                               reg = <0>;
> +                               boot-phase = "pre-ram";
> +                               project = "U-Boot";
> +                               text = "\nU-Boot SPL 2023.01 (Feb 03 2023 - 14:45:39 -0700)\nTrying to boot from sandbox_image\nTrying to boot from sandbox_file\n";
> +                       };
> +
> +                       log@1 {
> +                               reg = <1>;
> +                               boot-phase = "loader";
> +                               project = "U-Boot";
> +                               time-format = "usec";
> +                               text = "\n\n123\x1f2:boot:lib/display_options.c:43:display_options\x02U-Boot 2023.01 (Feb 03 2023 - 14:45:39 -0700)\n\nReset Status: COLD\nModel: sandbox\nDRAM:  256 MiB\n";
> +                       };
> +
> +                       log@2 {
> +                               reg = <2>;
> +                               boot-phase = "pre-ram";
> +                               project = "TF-A";
> +                               text-start = <0x103000>;
> +                               text-end = <0x107000>;
> +                       };
> +               };
> +       };
> +};
> --
> 2.39.1.519.gcb327c4b5f-goog
>
