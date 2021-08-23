Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4E6C3F4BBC
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 15:31:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236500AbhHWNa7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 09:30:59 -0400
Received: from mail-oo1-f48.google.com ([209.85.161.48]:40488 "EHLO
        mail-oo1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236691AbhHWNa7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 09:30:59 -0400
Received: by mail-oo1-f48.google.com with SMTP id j11-20020a4a92cb000000b002902ae8cb10so89231ooh.7
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 06:30:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=tYKXcPONtDHENaTk531QOuIYk5FCjGu+6Vp94/ZbRyY=;
        b=l866HdV5ZiuPlQaBH0poEElhTl1UlC1M+jfVp9/AxyD+k3CBE4s2z3yP2ParNtXxQq
         Akksf2mtOYMzvv8EfUA0bZvHTtb7gIpeKXPv0sEO7zG5h+UBSWmjh6d2E1taFnSe/3mE
         xmLKAU2u9DaD/lsx53HfZvw/tfu96Njm3iwrhI/urmMNusB60jgo2P8X5d1ZFRGsTXl3
         hYuDKvBLi7kobYJ4t9uaLlCctizIEssON0lPepGA38rFwlEPinrP9seFs93ytNi1TWXE
         8zgxXI0TZ1yApQd51i8R2TDi+t5QtxtJoSexYACrhSzOYXmxUGM6dxzkq5EUlCD4zRAu
         VPCQ==
X-Gm-Message-State: AOAM530Of7yW2+IpU0ZOixzM/YtBpz0cks9lL8LaqDjQDG6JtNoeS6MG
        QovSoFtE6AI9XSs7XuP6/+jPBKDf8A==
X-Google-Smtp-Source: ABdhPJzjXLnJ1CRjEDilFbPZxBvNwH89yBnHeyfUNi7XPvRtSxuGSZLoS6YuOJgz+Yoc+qe1I5w/6A==
X-Received: by 2002:a4a:6f4a:: with SMTP id i10mr39788oof.64.1629725416546;
        Mon, 23 Aug 2021 06:30:16 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id p124sm3620811oia.8.2021.08.23.06.30.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 06:30:15 -0700 (PDT)
Received: (nullmailer pid 1982768 invoked by uid 1000);
        Mon, 23 Aug 2021 13:30:13 -0000
From:   Rob Herring <robh@kernel.org>
To:     Sugar Zhang <sugar.zhang@rock-chips.com>
Cc:     linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
        broonie@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de
In-Reply-To: <1629716132-21544-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com> <1629716132-21544-1-git-send-email-sugar.zhang@rock-chips.com>
Subject: Re: [PATCH 15/15] ASoC: dt-bindings: rockchip: i2s: Document property 'clk-trcm'
Date:   Mon, 23 Aug 2021 08:30:13 -0500
Message-Id: <1629725413.505500.1982767.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 23 Aug 2021 18:55:32 +0800, Sugar Zhang wrote:
> This patch documents property 'rockchip,clk-trcm' which is used
> to specify the lrck.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Change-Id: I648142c57c568bbed209f2b9188b1f539a3285b2
> ---
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
make[1]: *** Deleting file 'Documentation/devicetree/bindings/sound/rockchip-i2s.example.dts'
Traceback (most recent call last):
  File "/usr/local/bin/dt-extract-example", line 45, in <module>
    binding = yaml.load(open(args.yamlfile, encoding='utf-8').read())
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", line 434, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 120, in get_single_data
    node = self.composer.get_single_node()
  File "_ruamel_yaml.pyx", line 706, in _ruamel_yaml.CParser.get_single_node
  File "_ruamel_yaml.pyx", line 724, in _ruamel_yaml.CParser._compose_document
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 891, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 904, in _ruamel_yaml.CParser._parse_next_event
ruamel.yaml.scanner.ScannerError: mapping values are not allowed in this context
  in "<unicode string>", line 80, column 8
make[1]: *** [Documentation/devicetree/bindings/Makefile:20: Documentation/devicetree/bindings/sound/rockchip-i2s.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/sound/rockchip-i2s.yaml:  mapping values are not allowed in this context
  in "<unicode string>", line 80, column 8
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml: ignoring, error parsing file
warning: no schema found in file: ./Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
make: *** [Makefile:1419: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1519630

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

