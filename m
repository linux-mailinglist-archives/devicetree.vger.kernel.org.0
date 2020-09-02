Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFAFD25B5F6
	for <lists+devicetree@lfdr.de>; Wed,  2 Sep 2020 23:37:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726312AbgIBVgz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Sep 2020 17:36:55 -0400
Received: from mail-il1-f195.google.com ([209.85.166.195]:36170 "EHLO
        mail-il1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726298AbgIBVgz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Sep 2020 17:36:55 -0400
Received: by mail-il1-f195.google.com with SMTP id p13so604851ils.3
        for <devicetree@vger.kernel.org>; Wed, 02 Sep 2020 14:36:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=AEWdZ2EvoE7+VzEELCc1s9zY9GOHLD1KmRpGN6qmpio=;
        b=blI6yqkHE+wSnbwJT7y0YvnCi7IFdw0Os+ySi4NoxDfTi4xciqgPGd/UE+l9nvrezm
         6i5VVTIs3fI6MyX8/JiyDPPYhzh0q2rEGpkb5r++ccYVwgl9uL/XN+bEWAqJbyRhD4a3
         exOURDVcIjQ+G+jr2kuXmGUpskTviW49swhdTaj266l6U3sr3OT6KdptSxss7L/Wb92z
         EcLRpy6kdsJGH6XZp2LFxOxV5ANLOL7HtPO+wTZkFlYseD63M9g5RC6D14UwLFm0i5rh
         5PZc3xNGoS7MtPAWpChlaWzjpXoHOtMLpJC3cH0MbKc4NERzYNUHH5h1EubkdaVNdpeI
         LGYQ==
X-Gm-Message-State: AOAM533OgJCRHrpSIKq1hwmvJywDDYn6IJMgQIIAHjN0dMneJS0ZbrAP
        YC8pRJW5Vcz4dtfgR/XKHg==
X-Google-Smtp-Source: ABdhPJyarj6G/iqVZKXQz8HL1M22qulKMKM6kx59DMtmez9yEN6qzOJoTIUVxw4aFsYL5Lizrwr3Cw==
X-Received: by 2002:a92:dad1:: with SMTP id o17mr250544ilq.22.1599082613845;
        Wed, 02 Sep 2020 14:36:53 -0700 (PDT)
Received: from xps15 ([64.188.179.249])
        by smtp.gmail.com with ESMTPSA id g15sm430212ilb.37.2020.09.02.14.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2020 14:36:53 -0700 (PDT)
Received: (nullmailer pid 1414006 invoked by uid 1000);
        Wed, 02 Sep 2020 21:36:52 -0000
Date:   Wed, 2 Sep 2020 15:36:52 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     devicetree@vger.kernel.org, kernel-team@android.com,
        linux-arm-kernel@lists.infradead.org,
        Will Deacon <will@kernel.org>, tsoni@quicinc.com,
        pratikp@quicinc.com
Subject: Re: [PATCH 2/9] dt-bindings: Arm: Extend FF-A binding to support
 in-kernel usage of partitions
Message-ID: <20200902213652.GA1410716@bogus>
References: <20200829170923.29949-1-sudeep.holla@arm.com>
 <20200829170923.29949-3-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200829170923.29949-3-sudeep.holla@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 29 Aug 2020 18:09:16 +0100, Sudeep Holla wrote:
> Since the FF-A v1.0 specification doesn't list the UUID of all the
> partitions in the discovery API, we need to specify the UUID of the
> partitions that need to be accessed by drivers within the kernel.
> 
> This extends the binding to provide the list of partitions that kernel
> drivers may need to access and are not part of the partitions managed
> by the hypervisor.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/arm/arm,ffa.yaml      | 34 +++++++++++++++++--
>  1 file changed, 32 insertions(+), 2 deletions(-)
> 
> Hi,
> 
> I am sure this is incomplete, but I couldn't figure out how to make all
> the child properties optional if it is not managed by hypervisor.
> 
> Moreover, if we don't like the idea of adding UUID of all the partitions
> that in-kernel drivers may need to communicate to, one alternative I can
> think of is to allow the creation of FFA device from the FFA driver
> itself.
> 
> Regards,
> Sudeep
> 


My bot found errors running 'make dt_binding_check' on your patch:

Traceback (most recent call last):
  File "/usr/local/bin/dt-extract-example", line 45, in <module>
    binding = yaml.load(open(args.yamlfile, encoding='utf-8').read())
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", line 343, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 111, in get_single_data
    node = self.composer.get_single_node()
  File "_ruamel_yaml.pyx", line 706, in _ruamel_yaml.CParser.get_single_node
  File "_ruamel_yaml.pyx", line 724, in _ruamel_yaml.CParser._compose_document
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 773, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 850, in _ruamel_yaml.CParser._compose_sequence_node
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 731, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 904, in _ruamel_yaml.CParser._parse_next_event
ruamel.yaml.scanner.ScannerError: while scanning for the next token
found character that cannot start any token
  in "<unicode string>", line 98, column 1
make[1]: *** [Documentation/devicetree/bindings/Makefile:18: Documentation/devicetree/bindings/arm/arm,ffa.example.dts] Error 1
make[1]: *** Deleting file 'Documentation/devicetree/bindings/arm/arm,ffa.example.dts'
make[1]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/arm/arm,ffa.yaml:  while scanning for the next token
found character that cannot start any token
  in "<unicode string>", line 98, column 1
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/arm,ffa.yaml: ignoring, error parsing file
warning: no schema found in file: ./Documentation/devicetree/bindings/arm/arm,ffa.yaml
make: *** [Makefile:1366: dt_binding_check] Error 2


See https://patchwork.ozlabs.org/patch/1353741

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

