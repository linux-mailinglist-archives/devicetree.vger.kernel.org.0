Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49C1A5677A5
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 21:19:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232659AbiGETTG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 15:19:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232957AbiGETTE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 15:19:04 -0400
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 715E421835
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 12:19:03 -0700 (PDT)
Received: by mail-il1-f180.google.com with SMTP id p18so2799346ilm.4
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 12:19:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=8/rhBA+HafJmFNl0ZeFY2qz+zo9g7qqKGe3P7RbQoQM=;
        b=ffOzT+BNpUMUD5HvUxF1a0anVbc0Oo0y4B5yeZq7ofuG5MMAszQVjfxl3dLR19zIU9
         EtE5VrkWdkc23YlYyl3P2DrH/hlQH4RreGs8Rr0uX6plijwa2BHGYKywO5NTFkY4FHNH
         0IKo9nFvE3JL91st+OADn00AkEtSguriU+H8zQibi6gT1mTpGqpeKHGKHnaBpDv3gJn1
         H5To6h5lU+YIkFVF9efPGUMAGn04ZtI3sQTbjARIsU/dZm8a+8KwnHUZ7+YVDgXVCY5e
         fnUN98ILXdfPEUBfqrze16VEEkxvBuT5s4p9hnvMXc262uK1PafXmZrJbFzJMTFBFqcz
         5kMQ==
X-Gm-Message-State: AJIora8VbJp6SgUxzJz1JVF+oBr84xxniAWWUvp6SGrauWjri1Ql9yq3
        riRqU5Qoy0rF7AwtjVLJtKwk3Ekbbw==
X-Google-Smtp-Source: AGRyM1sC7T1yNtb403vll18LU/NA2mNuE+J0r30cKhiCNpm578wmNJKP6xeerCMWXiBf9RJzX90MUg==
X-Received: by 2002:a05:6e02:1a06:b0:2dc:314d:b163 with SMTP id s6-20020a056e021a0600b002dc314db163mr326374ild.75.1657048742698;
        Tue, 05 Jul 2022 12:19:02 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id y10-20020a92090a000000b002dc11cf02e0sm2619266ilg.20.2022.07.05.12.19.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 12:19:02 -0700 (PDT)
Received: (nullmailer pid 2471237 invoked by uid 1000);
        Tue, 05 Jul 2022 19:18:57 -0000
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?q?Marek_Beh=C3=BAn?= <kabel@kernel.org>
Cc:     devicetree@vger.kernel.org, pali@kernel.org,
        Rob Herring <robh+dt@kernel.org>
In-Reply-To: <20220705175450.11886-1-kabel@kernel.org>
References: <20220705175450.11886-1-kabel@kernel.org>
Subject: Re: [PATCH] dt-bindings: bus: add device tree bindings for fsl,p1021rdb-pc-cpld
Date:   Tue, 05 Jul 2022 13:18:57 -0600
Message-Id: <1657048737.427000.2471236.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,PP_MIME_FAKE_ASCII_TEXT,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 05 Jul 2022 19:54:50 +0200, Marek Behún wrote:
> Add binding for CPLD bus interface of Freescale P1021RDB Combo Board
> CPLD Design.
> 
> Signed-off-by: Marek Behún <kabel@kernel.org>
> ---
>  .../bindings/bus/fsl,p1021rdb-pc-cpld.yaml    | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.example.dtb: cpld@3,0: $nodename:0: 'cpld@3,0' does not match '^([a-z][a-z0-9\\-]+-bus|bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
	From schema: /usr/local/lib/python3.10/dist-packages/dtschema/schemas/simple-bus.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

