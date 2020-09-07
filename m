Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02DE325F9B5
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 13:43:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728608AbgIGLl5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 07:41:57 -0400
Received: from foss.arm.com ([217.140.110.172]:33626 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728666AbgIGLlx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Sep 2020 07:41:53 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E2DA01045;
        Mon,  7 Sep 2020 04:41:10 -0700 (PDT)
Received: from bogus (unknown [10.57.10.112])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C6C33F66E;
        Mon,  7 Sep 2020 04:41:09 -0700 (PDT)
Date:   Mon, 7 Sep 2020 12:41:06 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, kernel-team@android.com,
        linux-arm-kernel@lists.infradead.org,
        Will Deacon <will@kernel.org>, tsoni@quicinc.com,
        pratikp@quicinc.com
Subject: Re: [PATCH 2/9] dt-bindings: Arm: Extend FF-A binding to support
 in-kernel usage of partitions
Message-ID: <20200907114106.GE17330@bogus>
References: <20200829170923.29949-1-sudeep.holla@arm.com>
 <20200829170923.29949-3-sudeep.holla@arm.com>
 <20200902213652.GA1410716@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200902213652.GA1410716@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 02, 2020 at 03:36:52PM -0600, Rob Herring wrote:
> On Sat, 29 Aug 2020 18:09:16 +0100, Sudeep Holla wrote:
> > Since the FF-A v1.0 specification doesn't list the UUID of all the
> > partitions in the discovery API, we need to specify the UUID of the
> > partitions that need to be accessed by drivers within the kernel.
> > 
> > This extends the binding to provide the list of partitions that kernel
> > drivers may need to access and are not part of the partitions managed
> > by the hypervisor.
> > 
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  .../devicetree/bindings/arm/arm,ffa.yaml      | 34 +++++++++++++++++--
> >  1 file changed, 32 insertions(+), 2 deletions(-)
> > 
> > Hi,
> > 
> > I am sure this is incomplete, but I couldn't figure out how to make all
> > the child properties optional if it is not managed by hypervisor.
> > 
> > Moreover, if we don't like the idea of adding UUID of all the partitions
> > that in-kernel drivers may need to communicate to, one alternative I can
> > think of is to allow the creation of FFA device from the FFA driver
> > itself.
> > 
> > Regards,
> > Sudeep
> > 
> 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> Traceback (most recent call last):
>   File "/usr/local/bin/dt-extract-example", line 45, in <module>
>     binding = yaml.load(open(args.yamlfile, encoding='utf-8').read())
>   File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", line 343, in load
>     return constructor.get_single_data()
>   File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 111, in get_single_data
>     node = self.composer.get_single_node()
>   File "_ruamel_yaml.pyx", line 706, in _ruamel_yaml.CParser.get_single_node
>   File "_ruamel_yaml.pyx", line 724, in _ruamel_yaml.CParser._compose_document
>   File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
>   File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
>   File "_ruamel_yaml.pyx", line 773, in _ruamel_yaml.CParser._compose_node
>   File "_ruamel_yaml.pyx", line 850, in _ruamel_yaml.CParser._compose_sequence_node
>   File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
>   File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
>   File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
>   File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
>   File "_ruamel_yaml.pyx", line 731, in _ruamel_yaml.CParser._compose_node
>   File "_ruamel_yaml.pyx", line 904, in _ruamel_yaml.CParser._parse_next_event
> ruamel.yaml.scanner.ScannerError: while scanning for the next token
> found character that cannot start any token
>   in "<unicode string>", line 98, column 1
> make[1]: *** [Documentation/devicetree/bindings/Makefile:18: Documentation/devicetree/bindings/arm/arm,ffa.example.dts] Error 1
> make[1]: *** Deleting file 'Documentation/devicetree/bindings/arm/arm,ffa.example.dts'
> make[1]: *** Waiting for unfinished jobs....
> ./Documentation/devicetree/bindings/arm/arm,ffa.yaml:  while scanning for the next token
> found character that cannot start any token
>   in "<unicode string>", line 98, column 1
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/arm,ffa.yaml: ignoring, error parsing file
> warning: no schema found in file: ./Documentation/devicetree/bindings/arm/arm,ffa.yaml
> make: *** [Makefile:1366: dt_binding_check] Error 2
> 
> 
> See https://patchwork.ozlabs.org/patch/1353741
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure dt-schema is up to date:
> 
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
> 
> Please check and re-submit.
> 

Thanks for the report and the steps to setup. I will try this soon.

-- 
Regards,
Sudeep
