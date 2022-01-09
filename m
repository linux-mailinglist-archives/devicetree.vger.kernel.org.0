Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BA0A488A96
	for <lists+devicetree@lfdr.de>; Sun,  9 Jan 2022 17:33:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231853AbiAIQdR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jan 2022 11:33:17 -0500
Received: from mail-oi1-f180.google.com ([209.85.167.180]:38852 "EHLO
        mail-oi1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236020AbiAIQdP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jan 2022 11:33:15 -0500
Received: by mail-oi1-f180.google.com with SMTP id s73so16115054oie.5
        for <devicetree@vger.kernel.org>; Sun, 09 Jan 2022 08:33:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=Z1pVSEW1VtM8vJuHgOfMWEXinm5qXbVcs2o6rGpAGew=;
        b=ICs5k0N/C8z02MYPfG20qeLoY43mlxNDW6wul+h1Vl1nqz3DrFbzXSbf79S/RTA+Uk
         x2/bHXMthxy0PcmOs00eb4nIQhirQTuTZlxNBP9GhO1HMxjZ90PEt+sqqUYQj0KjEkhS
         Wh8+4GHt2UlEAFKaeo6yowjy1kpDnCfn5ORa1ZPjccmAStn9Z5cUA+pLGCNmyHWHNOk5
         ONJJJJ0UH/q4ix4BMF9gGePmIxSGPKX29cEOkQ+PWQe55icyAiHbmfSHKB5WEfX2SJbB
         3yb1LA7eFPPhc1w7gBVXRrpIvsDcrnqZ6iyVnP9n/xRnKU4pgC6fLYhAUAe/umK1d120
         W8pw==
X-Gm-Message-State: AOAM531dCSGcBFumaKffwvUuM1Iv5YE/BJPIsO8vzkqyXoisIFEEvy23
        bRSLMJyxUkg22fJgUhNNaILAc7DyRQ==
X-Google-Smtp-Source: ABdhPJxpHaX7a/MPufzRvTSgundsuKj2Axx2WOdFKfxPATSmmt0/GTw9NihFKtCT+uMgbdsbf9a88w==
X-Received: by 2002:a05:6808:f94:: with SMTP id o20mr3934704oiw.54.1641745994708;
        Sun, 09 Jan 2022 08:33:14 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id v7sm753966oiv.46.2022.01.09.08.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Jan 2022 08:33:13 -0800 (PST)
Received: (nullmailer pid 3263071 invoked by uid 1000);
        Sun, 09 Jan 2022 16:33:11 -0000
From:   Rob Herring <robh@kernel.org>
To:     Stanislav Jakubek <stano.jakubek@gmail.com>
Cc:     linux-unisoc@lists.infradead.org, devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>
In-Reply-To: <20220109143721.GA7707@standask-GA-A55M-S2HP>
References: <20220109143721.GA7707@standask-GA-A55M-S2HP>
Subject: Re: [PATCH] dt-bindings: serial: Convert rda,8810pl-uart to YAML
Date:   Sun, 09 Jan 2022 10:33:11 -0600
Message-Id: <1641745991.464215.3263070.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 09 Jan 2022 15:37:21 +0100, Stanislav Jakubek wrote:
> Convert RDA Micro UART bindings to DT schema format.
> 
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>
> ---
>  .../bindings/serial/rda,8810pl-uart.txt       | 17 -------
>  .../bindings/serial/rda,8810pl-uart.yaml      | 46 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 47 insertions(+), 18 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/serial/rda,8810pl-uart.txt
>  create mode 100644 Documentation/devicetree/bindings/serial/rda,8810pl-uart.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/serial/rda,8810pl-uart.yaml:40:3: [error] syntax error: expected <block end>, but found '?' (syntax)

dtschema/dtc warnings/errors:
make[1]: *** Deleting file 'Documentation/devicetree/bindings/serial/rda,8810pl-uart.example.dts'
Traceback (most recent call last):
  File "/usr/local/bin/dt-extract-example", line 46, in <module>
    binding = yaml.load(open(args.yamlfile, encoding='utf-8').read())
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", line 434, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 119, in get_single_data
    node = self.composer.get_single_node()
  File "_ruamel_yaml.pyx", line 706, in _ruamel_yaml.CParser.get_single_node
  File "_ruamel_yaml.pyx", line 724, in _ruamel_yaml.CParser._compose_document
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 773, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 852, in _ruamel_yaml.CParser._compose_sequence_node
  File "_ruamel_yaml.pyx", line 904, in _ruamel_yaml.CParser._parse_next_event
ruamel.yaml.parser.ParserError: while parsing a block collection
  in "<unicode string>", line 37, column 3
did not find expected '-' indicator
  in "<unicode string>", line 40, column 3
make[1]: *** [Documentation/devicetree/bindings/Makefile:25: Documentation/devicetree/bindings/serial/rda,8810pl-uart.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
Traceback (most recent call last):
  File "/usr/bin/yamllint", line 11, in <module>
    load_entry_point('yamllint==1.20.0', 'console_scripts', 'yamllint')()
  File "/usr/lib/python3/dist-packages/yamllint/cli.py", line 184, in run
    prob_level = show_problems(problems, file, args_format=args.format,
  File "/usr/lib/python3/dist-packages/yamllint/cli.py", line 91, in show_problems
    for problem in problems:
  File "/usr/lib/python3/dist-packages/yamllint/linter.py", line 200, in _run
    for problem in get_cosmetic_problems(buffer, conf, filepath):
  File "/usr/lib/python3/dist-packages/yamllint/linter.py", line 137, in get_cosmetic_problems
    for problem in rule.check(rule_conf,
  File "/usr/lib/python3/dist-packages/yamllint/rules/indentation.py", line 570, in check
    for problem in _check(conf, token, prev, next, nextnext, context):
  File "/usr/lib/python3/dist-packages/yamllint/rules/indentation.py", line 336, in _check
    'wrong indentation: expected %d but found %d' %
TypeError: %d format: a number is required, not NoneType
./Documentation/devicetree/bindings/serial/rda,8810pl-uart.yaml:  while parsing a block collection
  in "<unicode string>", line 37, column 3
did not find expected '-' indicator
  in "<unicode string>", line 40, column 3
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/serial/rda,8810pl-uart.yaml: ignoring, error parsing file
make: *** [Makefile:1413: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1577445

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

