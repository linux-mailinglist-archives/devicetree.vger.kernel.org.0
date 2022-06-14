Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E842B54B809
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 19:52:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344154AbiFNRtF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 13:49:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344830AbiFNRs5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 13:48:57 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E528C46CA5
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 10:48:44 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4BDCA6174E
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 17:48:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5569C341C5
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 17:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1655228923;
        bh=7OmT/D6hvMhd1zc9LaIcgZCqNVbaN5bornIfFAq4Ejs=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=g6JKMMfh1PPHtZUN+XnABkWKvgL51OidTvyiO926Jts0G4N4/avrmk+4XmWVH7EQb
         2loqMgKbmD05aO1kP5C5mSlrOD+QzWJWtkVsGaBJopNhaIfiOlYhQ0XwHv5tWeZZTZ
         wfzAfdLHjo+w12F9AouDZM1+IebqCsCWr6FS50Cw6zjS2myPad+H/ho4J4zZTDhR5E
         sMqP15ou2FDMQWxSc6f0nCseQzfWcJRSjdW5j+AiftrUgBATg1+I+MvdAqKvi0jEUs
         yCCIbC04UDZVgGcZG9G7ZPuWPoJSIinAKVgdofVemTmHXflUanB6GX1KFjeKtQu0Ln
         mgsdV3pTPWNmQ==
Received: by mail-ua1-f47.google.com with SMTP id a28so1813789uaj.10
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 10:48:43 -0700 (PDT)
X-Gm-Message-State: AJIora/89cKejc81TP7dwIuGtbfSo1v78hoNdfGTB1C4Rxzz7kg7RFz5
        59Gvxk5EIf/do+lRrBWnJneRGy80hEMKCH83Tw==
X-Google-Smtp-Source: AGRyM1s+gnSgeN1utvDKOFxtgPZXzEdw6JTNPFd02uhbxAfBMUv+CVUQUmikdfQdWuWKkYbJq1dgpPpOaExaGHnh6A4=
X-Received: by 2002:ab0:7546:0:b0:374:ac43:ba1a with SMTP id
 k6-20020ab07546000000b00374ac43ba1amr3048993uaq.86.1655228922623; Tue, 14 Jun
 2022 10:48:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220614161258.1741427-1-stefanb@linux.ibm.com> <20220614161258.1741427-3-stefanb@linux.ibm.com>
In-Reply-To: <20220614161258.1741427-3-stefanb@linux.ibm.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 14 Jun 2022 11:48:30 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJG4MJHeu+7Ar0jWi-W6P01_EFtwiz56m_vtVy39uMtiw@mail.gmail.com>
Message-ID: <CAL_JsqJG4MJHeu+7Ar0jWi-W6P01_EFtwiz56m_vtVy39uMtiw@mail.gmail.com>
Subject: Re: [PATCH 2/3] tpm/kexec: Duplicate TPM measurement log in of-tree
 for kexec
To:     Stefan Berger <stefanb@linux.ibm.com>
Cc:     kexec@lists.infradead.org, devicetree@vger.kernel.org,
        Nayna Jain <nayna@linux.ibm.com>, nasastry@in.ibm.com,
        Frank Rowand <frowand.list@gmail.com>,
        Eric Biederman <ebiederm@xmission.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

(),On Tue, Jun 14, 2022 at 10:13 AM Stefan Berger <stefanb@linux.ibm.com> wrote:
>
> The memory area of the TPM measurement log is currently not properly
> duplicated for carrying it across kexec when an Open Firmware
> Devicetree is used. Therefore, the contents of the log get corrupted.
> Fix this for the kexec_file_load() syscall by allocating a buffer and
> copying the contents of the existing log into it. The new buffer is
> preserved across the kexec and a pointer to it is available when the new
> kernel is started. To achieve this, store the allocated buffer's address
> in the flattened device tree (fdt) under the name linux,tpm-kexec-buffer
> and search for this entry early in the kernel startup before the TPM
> subsystem starts up. Adjust the pointer in the of-tree stored under
> linux,sml-base to point to this buffer holding the preserved log. The
> TPM driver can then read the base address from this entry when making
> the log available.

This series really needs a wider Cc list of folks that worry about
TPMs and kexec.

> Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Frank Rowand <frowand.list@gmail.com>
> Cc: Eric Biederman <ebiederm@xmission.com>
> ---
>  drivers/of/device.c       |  24 +++++
>  drivers/of/kexec.c        | 190 +++++++++++++++++++++++++++++++++++++-
>  include/linux/kexec.h     |   6 ++
>  include/linux/of.h        |   5 +
>  include/linux/of_device.h |   3 +
>  kernel/kexec_file.c       |   6 ++
>  6 files changed, 233 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/of/device.c b/drivers/of/device.c
> index 874f031442dc..0cbd47b1cabc 100644
> --- a/drivers/of/device.c
> +++ b/drivers/of/device.c
> @@ -382,3 +382,27 @@ int of_device_uevent_modalias(struct device *dev, struct kobj_uevent_env *env)
>         return 0;
>  }
>  EXPORT_SYMBOL_GPL(of_device_uevent_modalias);
> +
> +int of_tpm_get_sml_parameters(struct device_node *np, u64 *base, u32 *size)

of/device.c is for functions that work on a struct device. This is not
the case here.

> +{
> +       const u32 *sizep;
> +       const u64 *basep;
> +
> +       sizep = of_get_property(np, "linux,sml-size", NULL);
> +       basep = of_get_property(np, "linux,sml-base", NULL);

Any new properties need a schema. For chosen, that's located here[1].
The more common pattern for similar properties is <base size>.

Don't use of_get_property(), but the typed functions instead.

> +       if (sizep == NULL && basep == NULL)
> +               return -ENODEV;
> +       if (sizep == NULL || basep == NULL)
> +               return -EIO;

Do we really need the error distinction?

> +
> +       if (of_property_match_string(np, "compatible", "IBM,vtpm") < 0 &&
> +           of_property_match_string(np, "compatible", "IBM,vtpm20") < 0) {
> +               *size = be32_to_cpup((__force __be32 *)sizep);
> +               *base = be64_to_cpup((__force __be64 *)basep);
> +       } else {
> +               *size = *sizep;
> +               *base = *basep;

What? Some platforms aren't properly encoded? Fix the firmware.

> +       }
> +       return 0;
> +}
> +EXPORT_SYMBOL_GPL(of_tpm_get_sml_parameters);
> diff --git a/drivers/of/kexec.c b/drivers/of/kexec.c
> index eef6f3b9939c..db5441123a70 100644
> --- a/drivers/of/kexec.c
> +++ b/drivers/of/kexec.c
> @@ -14,6 +14,7 @@
>  #include <linux/memblock.h>
>  #include <linux/libfdt.h>
>  #include <linux/of.h>
> +#include <linux/of_device.h>
>  #include <linux/of_fdt.h>
>  #include <linux/random.h>
>  #include <linux/slab.h>
> @@ -221,7 +222,6 @@ static void remove_ima_buffer(void *fdt, int chosen_node)
>                 pr_debug("Removed old IMA buffer reservation.\n");
>  }
>
> -#ifdef CONFIG_IMA_KEXEC
>  static int setup_buffer(void *fdt, int chosen_node, const char *name,
>                         uint64_t addr, uint64_t size)
>  {
> @@ -243,6 +243,7 @@ static int setup_buffer(void *fdt, int chosen_node, const char *name,
>
>  }
>
> +#ifdef CONFIG_IMA_KEXEC
>  /**
>   * setup_ima_buffer - add IMA buffer information to the fdt
>   * @image:             kexec image being loaded.
> @@ -275,6 +276,190 @@ static inline int setup_ima_buffer(const struct kimage *image, void *fdt,
>  }
>  #endif /* CONFIG_IMA_KEXEC */
>
> +/**
> + * tpm_get_kexec_buffer - get TPM log buffer from the previous kernel
> + * @phyaddr:   On successful return, set to physical address of buffer
> + * @size:      On successful return, set to the buffer size.
> + *
> + * Return: 0 on success, negative errno on error.
> + */
> +static int tpm_get_kexec_buffer(void **phyaddr, size_t *size)
> +{
> +       int ret;
> +       unsigned long tmp_addr;
> +       size_t tmp_size;
> +
> +       ret = get_kexec_buffer("linux,tpm-kexec-buffer", &tmp_addr, &tmp_size);

Again, must be documented.

> +       if (ret)
> +               return ret;
> +
> +       *phyaddr = (void *)tmp_addr;
> +       *size = tmp_size;
> +
> +       return 0;
> +}
> +
> +/**
> + * tpm_free_kexec_buffer - free memory used by the IMA buffer
> + */
> +static int tpm_of_remove_kexec_buffer(void)
> +{
> +       struct property *prop;
> +
> +       prop = of_find_property(of_chosen, "linux,tpm-kexec-buffer", NULL);
> +       if (!prop)
> +               return -ENOENT;
> +
> +       return of_remove_property(of_chosen, prop);
> +}
> +
> +/**
> + * remove_tpm_buffer - remove the TPM log buffer property and reservation from @fdt
> + *
> + * @fdt: Flattened Device Tree to update
> + * @chosen_node: Offset to the chosen node in the device tree
> + *
> + * The TPM log measurement buffer is of no use to a subsequent kernel, so we always
> + * remove it from the device tree.
> + */
> +static void remove_tpm_buffer(void *fdt, int chosen_node)
> +{
> +       int ret;
> +
> +       ret = remove_buffer(fdt, chosen_node, "linux,tpm-kexec-buffer");
> +       if (!ret)
> +               pr_debug("Removed old TPM log buffer reservation.\n");

Do we really need this print? If so, perhaps in remove_buffer() rather
than having every caller do it.

> +}
> +
> +/**
> + * setup_tpm_buffer - add TPM measurement log buffer information to the fdt
> + * @image:             kexec image being loaded.
> + * @fdt:               Flattened device tree for the next kernel.
> + * @chosen_node:       Offset to the chosen node.
> + *
> + * Return: 0 on success, or negative errno on error.
> + */
> +static int setup_tpm_buffer(const struct kimage *image, void *fdt,
> +                           int chosen_node)
> +{
> +       return setup_buffer(fdt, chosen_node, "linux,tpm-kexec-buffer",
> +                           image->tpm_buffer_addr, image->tpm_buffer_size);
> +}
> +
> +void tpm_add_kexec_buffer(struct kimage *image)
> +{
> +       struct kexec_buf kbuf = { .image = image, .buf_align = 1,
> +                                 .buf_min = 0, .buf_max = ULONG_MAX,
> +                                 .top_down = true };
> +       struct device_node *np;
> +       void *buffer;
> +       u32 size;
> +       u64 base;
> +       int ret;
> +
> +       np = of_find_node_by_name(NULL, "vtpm");
> +       if (!np)
> +               return;
> +
> +       if (of_tpm_get_sml_parameters(np, &base, &size) < 0)
> +               return;
> +
> +       buffer = vmalloc(size);
> +       if (!buffer)
> +               return;
> +       memcpy(buffer, __va(base), size);
> +
> +       kbuf.buffer = buffer;
> +       kbuf.bufsz = size;
> +       kbuf.memsz = size;
> +       ret = kexec_add_buffer(&kbuf);
> +       if (ret) {
> +               pr_err("Error passing over kexec TPM measurement log buffer: %d\n",
> +                      ret);
> +               return;
> +       }
> +
> +       image->tpm_buffer = buffer;
> +       image->tpm_buffer_addr = kbuf.mem;
> +       image->tpm_buffer_size = size;
> +}
> +
> +/**
> + * tpm_post_kexec - Make stored TPM log buffer available in of-tree
> + */
> +static int __init tpm_post_kexec(void)
> +{
> +       struct property *newprop;
> +       struct device_node *np;
> +       void *phyaddr;
> +       size_t size;
> +       u32 oflogsize;
> +       u64 unused;
> +       int ret;
> +
> +       ret = tpm_get_kexec_buffer(&phyaddr, &size);
> +       if (ret)
> +               return 0;
> +
> +       /*
> +        * If any one of the following steps fails then the next kexec will
> +        * cause issues due to linux,sml-base pointing to a stale buffer.
> +        */
> +       np = of_find_node_by_name(NULL, "vtpm");

This seems pretty IBM specific.

> +       if (!np)
> +               goto err_free_memblock;
> +
> +       /* logsize must not have changed */
> +       if (of_tpm_get_sml_parameters(np, &unused, &oflogsize) < 0)
> +               goto err_free_memblock;
> +       if (oflogsize != size)
> +               goto err_free_memblock;
> +
> +       /* replace linux,sml-base with new physical address of buffer */
> +       ret = -ENOMEM;
> +       newprop = kzalloc(sizeof(*newprop), GFP_KERNEL);
> +       if (!newprop)
> +               goto err_free_memblock;
> +
> +       newprop->name = kstrdup("linux,sml-base", GFP_KERNEL);
> +       if (!newprop->name)
> +               goto err_free_newprop;
> +
> +       newprop->length = sizeof(phyaddr);
> +
> +       newprop->value = kmalloc(sizeof(u64), GFP_KERNEL);
> +       if (!newprop->value)
> +               goto err_free_newprop_struct;
> +
> +       if (of_property_match_string(np, "compatible", "IBM,vtpm") < 0 &&
> +           of_property_match_string(np, "compatible", "IBM,vtpm20") < 0) {
> +               ret = -ENODEV;
> +               goto err_free_newprop_struct;
> +       } else {
> +               *(u64 *)newprop->value = (u64)phyaddr;
> +       }
> +
> +       ret = of_update_property(np, newprop);

Just FYI for now, there's some work happening on a better API for
writing nodes and properties.

> +       if (ret) {
> +               pr_err("Could not update linux,sml-base with new address");
> +               goto err_free_newprop_struct;
> +       }
> +
> +       goto exit;
> +
> +err_free_newprop_struct:
> +       kfree(newprop->name);
> +err_free_newprop:
> +       kfree(newprop);
> +err_free_memblock:
> +       memblock_phys_free((phys_addr_t)phyaddr, size);
> +exit:
> +       tpm_of_remove_kexec_buffer();
> +
> +       return ret;
> +}
> +postcore_initcall(tpm_post_kexec);

Would be better if this is called explicitly at the right time when
needed rather than using an initcall.

> +
>  /*
>   * of_kexec_alloc_and_setup_fdt - Alloc and setup a new Flattened Device Tree
>   *
> @@ -464,6 +649,9 @@ void *of_kexec_alloc_and_setup_fdt(const struct kimage *image,
>         remove_ima_buffer(fdt, chosen_node);
>         ret = setup_ima_buffer(image, fdt, fdt_path_offset(fdt, "/chosen"));
>
> +       remove_tpm_buffer(fdt, chosen_node);
> +       ret = setup_tpm_buffer(image, fdt, fdt_path_offset(fdt, "/chosen"));
> +
>  out:
>         if (ret) {
>                 kvfree(fdt);
> diff --git a/include/linux/kexec.h b/include/linux/kexec.h
> index 58d1b58a971e..a0fd7ac0398c 100644
> --- a/include/linux/kexec.h
> +++ b/include/linux/kexec.h
> @@ -319,6 +319,12 @@ struct kimage {
>         void *elf_headers;
>         unsigned long elf_headers_sz;
>         unsigned long elf_load_addr;
> +
> +       /* Virtual address of TPM log buffer for kexec syscall */
> +       void *tpm_buffer;
> +
> +       phys_addr_t tpm_buffer_addr;
> +       size_t tpm_buffer_size;

Probably should use the same types as other buffers...

>  };

Rob

[1] https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/chosen.yaml
