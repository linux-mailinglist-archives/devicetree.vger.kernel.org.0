Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91F7E5EFEF6
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 23:00:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229802AbiI2VAT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 17:00:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229699AbiI2VAS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 17:00:18 -0400
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E89E674360
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 14:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1664485208;
        bh=isNAYZ2T4l8hdEkMNI8RkVBqM/jUgMXfuBM/xV/2Cic=;
        h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
        b=CBLyBhWxwugQP+vASPOOT5/HAA6+lY1tH1n1XBOpfZIPVXSjqK64bfmVu9z8BI6KY
         0DK4SosE0ATpqS5wGxtpLfv5rpc7bvDjA8eUu2jGHWW6jYwCaxbemgbmYwrjlnELZ1
         iOlSwTAJWBn/bAuxVzkgp9X+S3sPCRXxEtX8HiPw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.94] ([84.118.157.2]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M26vB-1ogUXu3w0v-002Xh8; Thu, 29
 Sep 2022 23:00:08 +0200
Message-ID: <9ffef06b-cdc2-3afd-0f63-3b48c26b1ffe@gmx.de>
Date:   Thu, 29 Sep 2022 23:00:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH] schemas: Add schema for U-Boot driver model 'phase tags'
Content-Language: en-US
To:     Simon Glass <sjg@chromium.org>
Cc:     Rob Herring <robh@kernel.org>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Devicetree Discuss <devicetree@vger.kernel.org>,
        U-Boot Custodians <u-boot-custodians@lists.denx.de>
References: <20220929195804.2773808-1-sjg@chromium.org>
 <CAPnjgZ1yHO6-JARn_rEjHD_bQC4cP6i586Ws2qS76dOsWLpw5Q@mail.gmail.com>
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
In-Reply-To: <CAPnjgZ1yHO6-JARn_rEjHD_bQC4cP6i586Ws2qS76dOsWLpw5Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:KP7rernHtrRYr55blu+7ygNkZRGPRN0ILZ78J8zBRxQ3Khkfauz
 HW6soAGdLpFmTNgOA708eHUxYAEtRL7iyx8VqbTwo1PnvI2j44LnaXiTiCHlGzGjBjnTHLk
 vHU+4ua4MAqofGIo1emNFnhFX6EUuQEzxY6YMoUT1yt8lfk8Ec1C6SkBXVkegP1nk7ms9UY
 3G7l0VzGW4GL2jou0TG4Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:MH/Q+CKK50s=:lODGMRv/4IIfPemGU7Ov0S
 KkHhSaTA0bFs1VvuaBPKWqhaZb6zq7XrFRVjFNx4ZHKguQOwqFYfZJ2ZyKC01c/5QTAzfAGQO
 c/cmGbld+yMYU4hkXXy2UWAfWroqOdzfXJ4LTIKjHHp5pMvlKb5Mw5SYdSWDR5JIyTXb5zHjE
 VMNuyEN1OhoIm5l30Vzmy/yh5+6Elzo5MwBGdjbkvOgHbcWPMi1yK/8lqQrpS6W9DOKJ+8jD0
 EfnO07tex1NPeSmDGCKeVToC7mzTtV8985FBeYih2i5Zcp4v0jBDI0eOUuiT9K8qkr4htnGJ9
 PpTYAQX88Pv8Ufw+QoH/JqO8Cg1x97SMYSJEYFlc+SpVFlq9ZFooGEm98p0FV3whJsbURsBMq
 NTY2JezwWRosPEkBAgSdIT5EkiSi1Z2Rzd6hzWf+K+vp88AWQZKjqBktjPbWJb2cm2pT0Nf9V
 PiZNOjlnfI0f+7hV+bm7IC76uYi+8HCKAyMnRgPuROVwORSCRdgjsP5sofGG6ODSjeHHSbmVW
 /X7KoSeXQ8pEZcFnNV9dFE3WCoApV0l8ggzznhAdFF5sTeHhYrOG7t5d1JzlgTth5scwBAxMX
 5uvlcIDcLUTkK0eJcl+wRfdTfn6p2B87CbZt3RdIanhjfBp0yAFA+TzhdCQ9JKyUKcTstoCUg
 /Caqm02/XMuBz5VW6HU3accGzhsySIqc9p+hjP4zMnJv3yiIsTm4jzAWcWXz+IZrkVEzm/IJW
 wKEr9kmYPqAO/BXkmNaTVsMhyMZi1gSaoJdho70+QhdEwwre8V2HJUcwRlcHzUL4NN0rAUTl0
 CyTOX9+E66zBUzWmCjwc4EaOfk+k9i37MQGrn8vHdqVhkBsYwJ3mHLFLLAnv1YHWJavvjp0HT
 aiZoxXNpyNWaF+Wb+VVnwXzqKfhTKxr3S+/6CbYfyG86rQpLVyVp6nJfYxWHWTj7g92K+hH/R
 OqpGn8wfFdq5z6+rI+71V7aTtd2/zTuCSAZBshdCqcxtvzJxWrzjjURQjZ7gW8UtVUIFfoJbr
 rLdtVCCCdUjXiy9wBW6K79pFak4k5IO+ZKMdMi4Fh5gyvfZFJ+BG+s1khuwLB0Mgfj166SWeR
 PulH+CLWO6pxJ3xeOUii67xp6SmSDJU6/ozkvRpM9NR8nd5gxnSQ19+gZ2iP9I82RX2mCMspY
 HGuvdztGtmkAj76oo0Hj47QD1d
X-Spam-Status: No, score=-6.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/29/22 22:11, Simon Glass wrote:
> +U-Boot Custodians too
>
> On Thu, 29 Sept 2022 at 13:58, Simon Glass <sjg@chromium.org> wrote:
>>
>> Until recently it has not been possible to add any U-Boot-specific
>> properties to the device tree schema. Now that it is somewhat separated
>> from Linux and people are feeling the enormous pain of the bifurcated
>> schema, it seems like a good time to add this and other U-Boot-specific
>> bindings.
>>
>> U-Boot has some particular challenges with device tree and devices whic=
h
>> are not faced with Linux:
>>
>> - U-Boot has multiple build phases, such as a Secondary Program Loader
>>    (SPL) phase which typically runs in a pre-SDRAM environment where co=
de
>>    and data space are limited. In particular, there may not be enough
>>    space for the full device tree blob. U-Boot uses various automated
>>    techniques to reduce the size from perhaps 40KB to 3KB.
>> - Some U-Boot phases needs to run before the clocks are properly set up=
,
>>    where the CPU may be running very slowly. Therefore it is important =
to
>>    bind only those devices which are actually needed in that phase
>> - Unlike Linux or UEFI, U-Boot uses lazy initialisation for its devices=
,
>>    with 'bind' and 'probe' being separate steps. Even if a device is bo=
und,
>>    it is not actually probed until it is used. This is necessary to kee=
p
>>    the boot time reasonable, e.g. to under a second
>>
>> The phases of U-Boot in order are: TPL, VPL, SPL, U-Boot (first
>> pre-relocation, then post-relocation). ALl but the last two are optiona=
l.
>>
>> For the above reasons, U-Boot only includes the full device tree in the
>> final 'U-Boot proper' build. Even then, before relocation U-Boot only
>> processes nodes which are marked as being needed.
>>
>> For this to work, U-Boot's driver model[1] provides a way to mark devic=
e
>> tree nodes as applicable for a particular phase. This works by adding a
>> tag to the node, e.g.:
>>
>>     cru: clock-controller@ff760000 {
>>        u-boot,dm-all;
>>        compatible =3D "rockchip,rk3399-cru";
>>        reg =3D <0x0 0xff760000 0x0 0x1000>;
>>        rockchip,grf =3D <&grf>;
>>        #clock-cells =3D <1>;
>>        #reset-cells =3D <1>;
>>        ...
>>     };
>>
>> Here the "u-boot,dm-all" tag indicates that the node must be present in
>> all phases, since the clock driver is required
>>
>> There has been discussion over the years about whether this could be do=
ne
>> in a property instead, e.g.
>>
>>     options {
>>        u-boot,dm-all =3D <&cru> <&gpio_a> ...;
>>        ...
>>     };
>>
>> Some problems with this:
>>
>> - we need to be able to merge several such tags from different .dtsi fi=
les
>>    since many boards have their own specific requirements
>> - it is hard to find and cross-reference the affected nodes
>> - it is more error-prone
>> - it requires significant tool rework in U-Boot, including fdtgrep and
>>    the build system
>> - is harder (slower, more code) to process since it involves scanning
>>    another node/property to find out what to do with a particular node
>> - we don't want to add phandle arguments to the above since we are
>>    referring, e.g., to the clock device as a whole, not a paricular clo=
ck
>> - the of-platdata feature[2], which converts device tree to C for even
>>    more constrained environments, would need to become aware of the
>>    /options node
>>
>> There is also the question about whether this needs to be U-Boot-specif=
ic,
>> or whether the tags could be generic. From what I can tell, U-Boot is t=
he
>> only bootloader which seriously attempts to use a runtime device tree i=
n
>> all cases. We could perhaps adopt U-Boot's naming for the phases and dr=
op
>> the "u-boot," prefix, but that might cause confusion.
>>
>> It should also be noted that the approach provided here has stood the t=
est
>> of time, used in U-Boot for 8 years so far.
>>
>> So add the schema for this. This will allow a major class of schema
>> exceptions to be dropped from the U-Boot source tree.
>>
>> This being sent to the mailing list since it might attract more review.
>> A PR will be sent when this has had some review. That is why the file
>> path is set up for https://github.com/devicetree-org/dt-schema rather
>> than the Linux kernel.
>>
>> [1] https://u-boot.readthedocs.io/en/latest/develop/driver-model/index.=
html
>> [2] https://u-boot.readthedocs.io/en/latest/develop/driver-model/of-pla=
t.html
>>
>> Signed-off-by: Simon Glass <sjg@chromium.org>
>> ---
>>
>>   dtschema/schemas/u-boot.yaml | 48 +++++++++++++++++++++++++++++++++++=
+
>>   1 file changed, 48 insertions(+)
>>   create mode 100644 dtschema/schemas/u-boot.yaml
>>
>> diff --git a/dtschema/schemas/u-boot.yaml b/dtschema/schemas/u-boot.yam=
l

I guess we will more files to describe device-tree additions by U-Boot.
I would suggest to use a folder schemas/u-boot/ with a file xpl-select.yam=
l.

>> new file mode 100644
>> index 0000000..6c5c820
>> --- /dev/null
>> +++ b/dtschema/schemas/u-boot.yaml
>> @@ -0,0 +1,48 @@
>> +# SPDX-License-Identifier: BSD-2-Clause
>> +# Copyright 2022 Google LLC
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/serial.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Bindings required by U-Boot driver model
>> +
>> +maintainers:
>> +  - Simon Glass <sjg@chromium.org>
>> +
>> +patternProperties:
>> +  "^u-boot,dm-(tpl|vpl|spl|all|pre-reloc)$":

Please, describe the meaning of each suffix individually.
Especially the meaning of 'all' and 'pre-reloc' remains unclear in the
text below.

>> +    type: boolean
>> +    description: |
>> +      The device tree is often quite large (e.g. 40KB) and cannot fit =
into xPL
>> +      phases like SPL, TPL. Even with U-Boot proper, we normally only =
want to
>> +      init a small subset of devices before relocation.
>> +
>> +      U-Boot supports adding tags to device tree nodes to allow them t=
o be
>> +      marked according to the U-Boot phases where they should be inclu=
ded.
>> +
>> +      Without any tags, nodes are included only in U-Boot proper after
>> +      relocation. Any untagged nodes are dropped from xPL and are igno=
red before
>> +      relocation in U-Boot proper.
>> +
>> +      The xPL builds use fdtgrep drop any nodes which are not needed f=
or that
>> +      build. For example, TPL will drop any nodes which are not marked=
 with
>> +      u-boot,dm-tpl or u-boot,dm-all tags.
>> +
>> +      Note that xPL builds also drop the tags, since they have server =
their

%s/server/served/

>> +      purpose by that point. So when looking at xPL device tree files =
you will
>> +      not see these tags. The means, for example, that ofnode_pre_relo=
c()

%s/The/This/

>> +      returns true always in xPL builds. This is done to save space.

%s/returns true always/always returns true/

>> +
>> +      Multiple tags can be used in the same node.
>> +
>> +      One complication is that tags apply only to the node they are ad=
ded to,
>> +      not to any parents. This means that you often need to add the sa=
me tag to
>> +      parent nodes so that any properties needed by the parent driver =
are
>> +      included. Without that, the parent node may have no properties, =
or may not
>> +      be bound before relocation (meaning that its child will not be e=
ither).

%s/either/bound either/

Best regards

Heinrich

>> +
>> +      The phases of U-Boot in order are: TPL, VPL, SPL, U-Boot (first
>> +      pre-relocation, then post-relocation). ALl but the last two are =
optional.
>> +
>> +additionalProperties: true
>> --
>> 2.38.0.rc1.362.ged0d419d3c-goog
>>

