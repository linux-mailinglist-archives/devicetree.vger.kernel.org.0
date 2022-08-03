Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F15BB5890F5
	for <lists+devicetree@lfdr.de>; Wed,  3 Aug 2022 19:05:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235153AbiHCRF4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 13:05:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231966AbiHCRFz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 13:05:55 -0400
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87EFA175A4
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 10:05:54 -0700 (PDT)
Received: by mail-il1-f170.google.com with SMTP id t15so8775185ilm.7
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 10:05:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc;
        bh=v4roaZfqx7PcCIU4byNAVqdVVXRQGgV9wju3rqJ7gjI=;
        b=X3NphAnhqBAWWoUn0VWGaJLy+3ICuFhktP349BWJIq+u3CpR+a5gRXMzcJeZHIgFkH
         B2qxDQQ0sEOEpi3BenvIaZwxAd6GHtpgNxu7KGFxnkkFEaJdItmV7edlGsBHG5cl0kXD
         ppDKJNRdAWNIpuBnVYHAs4v2RaIXiezi8oG07el5GBDqxEPJGQpT/WbgOfrzA4mHlpbA
         lp3wchp8EZVtcUnNOD8Qo2dZ90tw2/1KafE5mMcNAIx0N5kKoYC5ewjGTCohtaZj3Dr7
         14X4JUFIiYayfwGvI3eaO5bVHHQSSK8iS8SBPVFwOI7hkR5OoW5+Gg2oQ9memR99pDtV
         JHnQ==
X-Gm-Message-State: AJIora9SJdTnLlovnTKTvwBvjXniGfsCybpBBzBTFZwQankFlvXXgyp8
        Qjt0XETfEnP6l1CDUSYiHw==
X-Google-Smtp-Source: AGRyM1v4ORHo4C/fzjAcUDL0GgJ4P9hEjXLJyCajqcS7rGT5MYm7xFNpQ8Xa/I6qzuXragIdgkR8mw==
X-Received: by 2002:a92:2809:0:b0:2de:2060:193 with SMTP id l9-20020a922809000000b002de20600193mr10893104ilf.188.1659546353588;
        Wed, 03 Aug 2022 10:05:53 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id q8-20020a02a988000000b0033f22c2e5b3sm7931254jam.98.2022.08.03.10.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Aug 2022 10:05:53 -0700 (PDT)
Received: (nullmailer pid 2293770 invoked by uid 1000);
        Wed, 03 Aug 2022 17:05:52 -0000
Date:   Wed, 3 Aug 2022 11:05:52 -0600
From:   Rob Herring <robh@kernel.org>
To:     Conor Dooley <mail@conchuod.ie>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: DT schema warnings on Risc-V virt machine
Message-ID: <20220803170552.GA2250266-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey folks,

FYI, I ran DT validation on the Risc-V 'virt' machine and these are the 
warnings:

/home/rob/riscv-virt.dtb: cpu@0: riscv,isa:0: 'rv64imafdcsuh' is not one of ['rv64imac', 'rv64imafdc']
        From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/riscv/cpus.yaml
/home/rob/riscv-virt.dtb: soc: poweroff: {'value': [[21845]], 'offset': [[0]], 'regmap': [[4]], 'compatible': ['syscon-poweroff']} should not be valid under {'type': 'object'}
        From schema: /home/rob/proj/git/dt-schema/dtschema/schemas/simple-bus.yaml
/home/rob/riscv-virt.dtb: soc: reboot: {'value': [[30583]], 'offset': [[0]], 'regmap': [[4]], 'compatible': ['syscon-reboot']} should not be valid under {'type': 'object'}
        From schema: /home/rob/proj/git/dt-schema/dtschema/schemas/simple-bus.yaml
/home/rob/riscv-virt.dtb: uart@10000000: $nodename:0: 'uart@10000000' does not match '^serial(@.*)?$'
        From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/serial/8250.yaml
/home/rob/riscv-virt.dtb: plic@c000000: compatible: 'oneOf' conditional failed, one must be fixed:
        'sifive,plic-1.0.0' is not one of ['sifive,fu540-c000-plic', 'starfive,jh7100-plic', 'canaan,k210-plic']
        'sifive,plic-1.0.0' is not one of ['allwinner,sun20i-d1-plic']
        'sifive,plic-1.0.0' was expected
        'thead,c900-plic' was expected
        From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
/home/rob/riscv-virt.dtb: plic@c000000: '#address-cells' is a required property
        From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
/home/rob/riscv-virt.dtb: clint@2000000: compatible:0: 'sifive,clint0' is not one of ['sifive,fu540-c000-clint', 'starfive,jh7100-clint', 'canaan,k210-clint']
        From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/timer/sifive,clint.yaml
/home/rob/riscv-virt.dtb: clint@2000000: compatible:1: 'sifive,clint0' was expected
        From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/timer/sifive,clint.yaml


Also from the 'spike' machine:

/home/rob/riscv-spike.dtb: cpu@0: riscv,isa:0: 'rv64imafdcsuh' is not one of ['rv64imac', 'rv64imafdc']
        From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/riscv/cpus.yaml
/home/rob/riscv-spike.dtb: clint@2000000: compatible:0: 'sifive,clint0' is not one of ['sifive,fu540-c000-clint', 'starfive,jh7100-clint', 'canaan,k210-clint']
        From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/timer/sifive,clint.yaml
/home/rob/riscv-spike.dtb: clint@2000000: compatible:1: 'sifive,clint0' was expected
        From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/timer/sifive,clint.yaml


There could also be other warnings from non-default configurations.

To reproduce, dump the dtb and run:

dt-validate -p Documentation/devicetree/bindings/processed-schema.json riscv-spike.dtb 

(processed-schema.json is from kernel validation run)

Rob
