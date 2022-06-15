Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2535654C96B
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 15:08:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349080AbiFONIn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 09:08:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352022AbiFONIg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 09:08:36 -0400
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 943CBA197
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 06:08:33 -0700 (PDT)
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
        by mx0b-001b2d01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25FD3IfV020446;
        Wed, 15 Jun 2022 13:08:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=Zk9iYVm6CumRGe5cbQqyYI3M6KmIq46Yqnv3DuXyDdw=;
 b=eKfvEdZIovWzkM5OqDtRZvoaLwb0V4RRDHjWBthqMliOaqSxp3V9xpfXmMVyo8eO5Fx8
 IV1Grmtmz2MQQh4DtFfq+CG3WVekNLf6toGuOr92le1G535JMCkgAxu+2NpJGWkFJmUc
 7hV3S2rIQV9oBlrVtcKWiB+l5RukR0d7FjJ5zKUJPKbY6J+u2+CvSfnkd9cP4Wjadzo3
 FEoGV54YGIiiSvmQ/2ZoNi+Cfw2qI5ykDCgeV7W/RCP7VExbPU1PpS9+4xpryeAZcfim
 AScB30zyRL6a10x0KiCpOvMmn1xykkwV8y/UJ4Zo1qQk7hiWpHFZ/Xi45xxpSbnwM3Tt 1g== 
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0b-001b2d01.pphosted.com (PPS) with ESMTPS id 3gq8e4vgg6-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Wed, 15 Jun 2022 13:08:07 +0000
Received: from m0098416.ppops.net (m0098416.ppops.net [127.0.0.1])
        by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 25FCppUB028034;
        Wed, 15 Jun 2022 13:08:07 GMT
Received: from ppma01wdc.us.ibm.com (fd.55.37a9.ip4.static.sl-reverse.com [169.55.85.253])
        by mx0b-001b2d01.pphosted.com (PPS) with ESMTPS id 3gq8e4vgfw-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Wed, 15 Jun 2022 13:08:07 +0000
Received: from pps.filterd (ppma01wdc.us.ibm.com [127.0.0.1])
        by ppma01wdc.us.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 25FD5Ecg002786;
        Wed, 15 Jun 2022 13:08:06 GMT
Received: from b03cxnp08028.gho.boulder.ibm.com (b03cxnp08028.gho.boulder.ibm.com [9.17.130.20])
        by ppma01wdc.us.ibm.com with ESMTP id 3gmjp93726-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Wed, 15 Jun 2022 13:08:06 +0000
Received: from b03ledav005.gho.boulder.ibm.com (b03ledav005.gho.boulder.ibm.com [9.17.130.236])
        by b03cxnp08028.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 25FD85MD26870038
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 15 Jun 2022 13:08:05 GMT
Received: from b03ledav005.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id A183BBE04F;
        Wed, 15 Jun 2022 13:08:05 +0000 (GMT)
Received: from b03ledav005.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 1FC1CBE051;
        Wed, 15 Jun 2022 13:08:05 +0000 (GMT)
Received: from [9.47.158.152] (unknown [9.47.158.152])
        by b03ledav005.gho.boulder.ibm.com (Postfix) with ESMTP;
        Wed, 15 Jun 2022 13:08:05 +0000 (GMT)
Message-ID: <af78f4b6-4cfb-5ea6-fdc9-dfcb73f4bc8c@linux.ibm.com>
Date:   Wed, 15 Jun 2022 09:08:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH 2/3] tpm/kexec: Duplicate TPM measurement log in of-tree
 for kexec
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>
Cc:     kexec@lists.infradead.org, devicetree@vger.kernel.org,
        Nayna Jain <nayna@linux.ibm.com>, nasastry@in.ibm.com,
        Frank Rowand <frowand.list@gmail.com>,
        Eric Biederman <ebiederm@xmission.com>
References: <20220614161258.1741427-1-stefanb@linux.ibm.com>
 <20220614161258.1741427-3-stefanb@linux.ibm.com>
 <CAL_JsqJG4MJHeu+7Ar0jWi-W6P01_EFtwiz56m_vtVy39uMtiw@mail.gmail.com>
From:   Stefan Berger <stefanb@linux.ibm.com>
In-Reply-To: <CAL_JsqJG4MJHeu+7Ar0jWi-W6P01_EFtwiz56m_vtVy39uMtiw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: IL-VNwfRniJatUnXAp-7X4wvJTKfK-SL
X-Proofpoint-GUID: Q06TEDorWv99poHCw9KIR-WCI0wDn7hY
Content-Transfer-Encoding: 7bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.874,Hydra:6.0.517,FMLib:17.11.64.514
 definitions=2022-06-15_13,2022-06-15_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=999 spamscore=0 adultscore=0
 impostorscore=0 phishscore=0 clxscore=1015 mlxscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206150052
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6/14/22 13:48, Rob Herring wrote:
> (),On Tue, Jun 14, 2022 at 10:13 AM Stefan Berger <stefanb@linux.ibm.com> wrote:
>>
>> The memory area of the TPM measurement log is currently not properly
>> duplicated for carrying it across kexec when an Open Firmware
>> Devicetree is used. Therefore, the contents of the log get corrupted.
>> Fix this for the kexec_file_load() syscall by allocating a buffer and
>> copying the contents of the existing log into it. The new buffer is
>> preserved across the kexec and a pointer to it is available when the new
>> kernel is started. To achieve this, store the allocated buffer's address
>> in the flattened device tree (fdt) under the name linux,tpm-kexec-buffer
>> and search for this entry early in the kernel startup before the TPM
>> subsystem starts up. Adjust the pointer in the of-tree stored under
>> linux,sml-base to point to this buffer holding the preserved log. The
>> TPM driver can then read the base address from this entry when making
>> the log available.
> 
> This series really needs a wider Cc list of folks that worry about
> TPMs and kexec.
> 
>> Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: Frank Rowand <frowand.list@gmail.com>
>> Cc: Eric Biederman <ebiederm@xmission.com>
>> ---
>>   drivers/of/device.c       |  24 +++++
>>   drivers/of/kexec.c        | 190 +++++++++++++++++++++++++++++++++++++-
>>   include/linux/kexec.h     |   6 ++
>>   include/linux/of.h        |   5 +
>>   include/linux/of_device.h |   3 +
>>   kernel/kexec_file.c       |   6 ++
>>   6 files changed, 233 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/of/device.c b/drivers/of/device.c
>> index 874f031442dc..0cbd47b1cabc 100644
>> --- a/drivers/of/device.c
>> +++ b/drivers/of/device.c
>> @@ -382,3 +382,27 @@ int of_device_uevent_modalias(struct device *dev, struct kobj_uevent_env *env)
>>          return 0;
>>   }
>>   EXPORT_SYMBOL_GPL(of_device_uevent_modalias);
>> +
>> +int of_tpm_get_sml_parameters(struct device_node *np, u64 *base, u32 *size)
> 
> of/device.c is for functions that work on a struct device. This is not
> the case here.

Can I put it into platform.c?

I should have probably mentioned it but this function here is a copy of 
code from tpm_read_log_of() from here: 
https://elixir.bootlin.com/linux/latest/source/drivers/char/tpm/eventlog/of.c#L38

3/3 refactors the code in tpm/eventlog/of.c to make use of this new 
function then to avoid code duplication. Therefore, this code here is 
more general than necessary at this point. Maybe I should do the move in 
a patch of its own?


> 
>> +{
>> +       const u32 *sizep;
>> +       const u64 *basep;
>> +
>> +       sizep = of_get_property(np, "linux,sml-size", NULL);
>> +       basep = of_get_property(np, "linux,sml-base", NULL);
> 
> Any new properties need a schema. For chosen, that's located here[1].
> The more common pattern for similar properties is <base size>.
> 
> Don't use of_get_property(), but the typed functions instead.

I think this was done due to the little endian and big endian 
distinction below.


> 
>> +       if (sizep == NULL && basep == NULL)
>> +               return -ENODEV;
>> +       if (sizep == NULL || basep == NULL)
>> +               return -EIO;
> 
> Do we really need the error distinction?

As I mentioned, this code is a copy from the TPM subsystem. There it 
does make a distinction because similar functions for acpi and efi make 
a distinction as well although this particular function's return code 
doesn't matter in the end.

The code I am referring to is this here:

https://elixir.bootlin.com/linux/latest/source/drivers/char/tpm/eventlog/common.c#L85

> 
>> +
>> +       if (of_property_match_string(np, "compatible", "IBM,vtpm") < 0 &&
>> +           of_property_match_string(np, "compatible", "IBM,vtpm20") < 0) {
>> +               *size = be32_to_cpup((__force __be32 *)sizep);
>> +               *base = be64_to_cpup((__force __be64 *)basep);
>> +       } else {
>> +               *size = *sizep;
>> +               *base = *basep;
> 
> What? Some platforms aren't properly encoded? Fix the firmware.

It's been like this for years...

> 
>> +       }
>> +       return 0;
>> +}
>> +EXPORT_SYMBOL_GPL(of_tpm_get_sml_parameters);
>> diff --git a/drivers/of/kexec.c b/drivers/of/kexec.c
>> index eef6f3b9939c..db5441123a70 100644
>> --- a/drivers/of/kexec.c
>> +++ b/drivers/of/kexec.c
>> @@ -14,6 +14,7 @@
>>   #include <linux/memblock.h>
>>   #include <linux/libfdt.h>
>>   #include <linux/of.h>
>> +#include <linux/of_device.h>
>>   #include <linux/of_fdt.h>
>>   #include <linux/random.h>
>>   #include <linux/slab.h>
>> @@ -221,7 +222,6 @@ static void remove_ima_buffer(void *fdt, int chosen_node)
>>                  pr_debug("Removed old IMA buffer reservation.\n");
>>   }
>>
>> -#ifdef CONFIG_IMA_KEXEC
>>   static int setup_buffer(void *fdt, int chosen_node, const char *name,
>>                          uint64_t addr, uint64_t size)
>>   {
>> @@ -243,6 +243,7 @@ static int setup_buffer(void *fdt, int chosen_node, const char *name,
>>
>>   }
>>
>> +#ifdef CONFIG_IMA_KEXEC
>>   /**
>>    * setup_ima_buffer - add IMA buffer information to the fdt
>>    * @image:             kexec image being loaded.
>> @@ -275,6 +276,190 @@ static inline int setup_ima_buffer(const struct kimage *image, void *fdt,
>>   }
>>   #endif /* CONFIG_IMA_KEXEC */
>>
>> +/**
>> + * tpm_get_kexec_buffer - get TPM log buffer from the previous kernel
>> + * @phyaddr:   On successful return, set to physical address of buffer
>> + * @size:      On successful return, set to the buffer size.
>> + *
>> + * Return: 0 on success, negative errno on error.
>> + */
>> +static int tpm_get_kexec_buffer(void **phyaddr, size_t *size)
>> +{
>> +       int ret;
>> +       unsigned long tmp_addr;
>> +       size_t tmp_size;
>> +
>> +       ret = get_kexec_buffer("linux,tpm-kexec-buffer", &tmp_addr, &tmp_size);
> 
> Again, must be documented.

Ok, I will send a PR to that repo once this is acceptable here.

> 
>> +       if (ret)
>> +               return ret;
>> +
>> +       *phyaddr = (void *)tmp_addr;
>> +       *size = tmp_size;
>> +
>> +       return 0;
>> +}
>> +
>> +/**
>> + * tpm_free_kexec_buffer - free memory used by the IMA buffer
>> + */
>> +static int tpm_of_remove_kexec_buffer(void)
>> +{
>> +       struct property *prop;
>> +
>> +       prop = of_find_property(of_chosen, "linux,tpm-kexec-buffer", NULL);
>> +       if (!prop)
>> +               return -ENOENT;
>> +
>> +       return of_remove_property(of_chosen, prop);
>> +}
>> +
>> +/**
>> + * remove_tpm_buffer - remove the TPM log buffer property and reservation from @fdt
>> + *
>> + * @fdt: Flattened Device Tree to update
>> + * @chosen_node: Offset to the chosen node in the device tree
>> + *
>> + * The TPM log measurement buffer is of no use to a subsequent kernel, so we always
>> + * remove it from the device tree.
>> + */
>> +static void remove_tpm_buffer(void *fdt, int chosen_node)
>> +{
>> +       int ret;
>> +
>> +       ret = remove_buffer(fdt, chosen_node, "linux,tpm-kexec-buffer");
>> +       if (!ret)
>> +               pr_debug("Removed old TPM log buffer reservation.\n");
> 
> Do we really need this print? If so, perhaps in remove_buffer() rather
> than having every caller do it.

Ok. Let me adjust 1/3 then as well. There I preserved the pr_debug but I 
will push it into the function and not print 'Removed old IMA log buffer 
reservation.' but instead 'Removed old linux,ima-kexec-buffer reservation.'

> 
>> +}
>> +
>> +/**
>> + * setup_tpm_buffer - add TPM measurement log buffer information to the fdt
>> + * @image:             kexec image being loaded.
>> + * @fdt:               Flattened device tree for the next kernel.
>> + * @chosen_node:       Offset to the chosen node.
>> + *
>> + * Return: 0 on success, or negative errno on error.
>> + */
>> +static int setup_tpm_buffer(const struct kimage *image, void *fdt,
>> +                           int chosen_node)
>> +{
>> +       return setup_buffer(fdt, chosen_node, "linux,tpm-kexec-buffer",
>> +                           image->tpm_buffer_addr, image->tpm_buffer_size);
>> +}
>> +
>> +void tpm_add_kexec_buffer(struct kimage *image)
>> +{
>> +       struct kexec_buf kbuf = { .image = image, .buf_align = 1,
>> +                                 .buf_min = 0, .buf_max = ULONG_MAX,
>> +                                 .top_down = true };
>> +       struct device_node *np;
>> +       void *buffer;
>> +       u32 size;
>> +       u64 base;
>> +       int ret;
>> +
>> +       np = of_find_node_by_name(NULL, "vtpm");
>> +       if (!np)
>> +               return;
>> +
>> +       if (of_tpm_get_sml_parameters(np, &base, &size) < 0)
>> +               return;
>> +
>> +       buffer = vmalloc(size);
>> +       if (!buffer)
>> +               return;
>> +       memcpy(buffer, __va(base), size);
>> +
>> +       kbuf.buffer = buffer;
>> +       kbuf.bufsz = size;
>> +       kbuf.memsz = size;
>> +       ret = kexec_add_buffer(&kbuf);
>> +       if (ret) {
>> +               pr_err("Error passing over kexec TPM measurement log buffer: %d\n",
>> +                      ret);
>> +               return;
>> +       }
>> +
>> +       image->tpm_buffer = buffer;
>> +       image->tpm_buffer_addr = kbuf.mem;
>> +       image->tpm_buffer_size = size;
>> +}
>> +
>> +/**
>> + * tpm_post_kexec - Make stored TPM log buffer available in of-tree
>> + */
>> +static int __init tpm_post_kexec(void)
>> +{
>> +       struct property *newprop;
>> +       struct device_node *np;
>> +       void *phyaddr;
>> +       size_t size;
>> +       u32 oflogsize;
>> +       u64 unused;
>> +       int ret;
>> +
>> +       ret = tpm_get_kexec_buffer(&phyaddr, &size);
>> +       if (ret)
>> +               return 0;
>> +
>> +       /*
>> +        * If any one of the following steps fails then the next kexec will
>> +        * cause issues due to linux,sml-base pointing to a stale buffer.
>> +        */
>> +       np = of_find_node_by_name(NULL, "vtpm");
> 
> This seems pretty IBM specific.

Yes, it is and I am not sure what to do about it. Should I cover parts 
of the function with a #ifdef CONFIG_PPC_PSERIES ?

> 
>> +       if (!np)
>> +               goto err_free_memblock;
>> +
>> +       /* logsize must not have changed */
>> +       if (of_tpm_get_sml_parameters(np, &unused, &oflogsize) < 0)
>> +               goto err_free_memblock;
>> +       if (oflogsize != size)
>> +               goto err_free_memblock;
>> +
>> +       /* replace linux,sml-base with new physical address of buffer */
>> +       ret = -ENOMEM;
>> +       newprop = kzalloc(sizeof(*newprop), GFP_KERNEL);
>> +       if (!newprop)
>> +               goto err_free_memblock;
>> +
>> +       newprop->name = kstrdup("linux,sml-base", GFP_KERNEL);
>> +       if (!newprop->name)
>> +               goto err_free_newprop;
>> +
>> +       newprop->length = sizeof(phyaddr);
>> +
>> +       newprop->value = kmalloc(sizeof(u64), GFP_KERNEL);
>> +       if (!newprop->value)
>> +               goto err_free_newprop_struct;
>> +
>> +       if (of_property_match_string(np, "compatible", "IBM,vtpm") < 0 &&
>> +           of_property_match_string(np, "compatible", "IBM,vtpm20") < 0) {
>> +               ret = -ENODEV;
>> +               goto err_free_newprop_struct;
>> +       } else {
>> +               *(u64 *)newprop->value = (u64)phyaddr;
>> +       }
>> +
>> +       ret = of_update_property(np, newprop);
> 
> Just FYI for now, there's some work happening on a better API for
> writing nodes and properties.

Ok.

> 
>> +       if (ret) {
>> +               pr_err("Could not update linux,sml-base with new address");
>> +               goto err_free_newprop_struct;
>> +       }
>> +
>> +       goto exit;
>> +
>> +err_free_newprop_struct:
>> +       kfree(newprop->name);
>> +err_free_newprop:
>> +       kfree(newprop);
>> +err_free_memblock:
>> +       memblock_phys_free((phys_addr_t)phyaddr, size);
>> +exit:
>> +       tpm_of_remove_kexec_buffer();
>> +
>> +       return ret;
>> +}
>> +postcore_initcall(tpm_post_kexec);
> 
> Would be better if this is called explicitly at the right time when
> needed rather than using an initcall.

The 'when needed' would be the TPM subsystem. However, if I was to make 
it dependent on the TPM subsystem we would loose the TPM log if we were 
not to kexec into a kernel with TPM subsystem or the TPM driver wasn't 
activated. I wanted to be able to preserve the log even if a kexec'ed 
kernel didn't support or activate the TPM driver and then a subsequent 
one again has it activated...

> 
>> +
>>   /*
>>    * of_kexec_alloc_and_setup_fdt - Alloc and setup a new Flattened Device Tree
>>    *
>> @@ -464,6 +649,9 @@ void *of_kexec_alloc_and_setup_fdt(const struct kimage *image,
>>          remove_ima_buffer(fdt, chosen_node);
>>          ret = setup_ima_buffer(image, fdt, fdt_path_offset(fdt, "/chosen"));
>>
>> +       remove_tpm_buffer(fdt, chosen_node);
>> +       ret = setup_tpm_buffer(image, fdt, fdt_path_offset(fdt, "/chosen"));
>> +
>>   out:
>>          if (ret) {
>>                  kvfree(fdt);
>> diff --git a/include/linux/kexec.h b/include/linux/kexec.h
>> index 58d1b58a971e..a0fd7ac0398c 100644
>> --- a/include/linux/kexec.h
>> +++ b/include/linux/kexec.h
>> @@ -319,6 +319,12 @@ struct kimage {
>>          void *elf_headers;
>>          unsigned long elf_headers_sz;
>>          unsigned long elf_load_addr;
>> +
>> +       /* Virtual address of TPM log buffer for kexec syscall */
>> +       void *tpm_buffer;
>> +
>> +       phys_addr_t tpm_buffer_addr;
>> +       size_t tpm_buffer_size;
> 
> Probably should use the same types as other buffers...

It did so following existing support for IMA: 
https://elixir.bootlin.com/linux/latest/source/include/linux/kexec.h

#ifdef CONFIG_IMA_KEXEC
	/* Virtual address of IMA measurement buffer for kexec syscall */
	void *ima_buffer;

	phys_addr_t ima_buffer_addr;
	size_t ima_buffer_size;
#endif

> 
>>   };
> 
> Rob
> 
> [1] https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/chosen.yaml
