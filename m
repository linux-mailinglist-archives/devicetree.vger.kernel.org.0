Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A0F278C026
	for <lists+devicetree@lfdr.de>; Tue, 29 Aug 2023 10:22:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232566AbjH2IWT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Aug 2023 04:22:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234172AbjH2IWM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Aug 2023 04:22:12 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AE88EE
        for <devicetree@vger.kernel.org>; Tue, 29 Aug 2023 01:22:08 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9a5be3166a2so180244066b.1
        for <devicetree@vger.kernel.org>; Tue, 29 Aug 2023 01:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693297327; x=1693902127;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mBgVvmBygjK/Y1T7d982fyuqRt4ydC3BsiFOQqvLEhw=;
        b=tiXxW+Qq9GXkyo1ZczvfwD4cZbatKHX5QpOIOm2QRQhNsABDzbS2JTgD8AhfzgiulY
         kAKcJryGsnBPsVOQp2uVv/8AwTbgW/dUXl0Js4uu1aDL06uoFw7a1H0H5VhDTROwC02a
         0BjLHVRSZmhfC6KOM2eI9vHgLCp/+n3fJ39j958i6jEPF1rFHBFMyjvJIJGdRPPzMu4M
         06U3qpChp5C1VpTa1bBei8sYv7E4QxEpNBgYD97zd1ZwfY48sctARlkrAZEJmO4HvfD8
         bhDgf8bk81WKiqpqKmpORterucYR4EE/FKxcTdKNOZP3a8JcL/lzwT4zwZvOB3SuVFex
         2Eug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693297327; x=1693902127;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mBgVvmBygjK/Y1T7d982fyuqRt4ydC3BsiFOQqvLEhw=;
        b=L/0as0llycKLeF4+yTnkqWqX01vaNhcwqFnMg9vV81bipRAtFdbZQbhHkS7N1j0CzS
         6NBJewGfJ58uXQghWVy0L2NsjqmsVDvohSHmfVAemwzwNNEqsm9DK1rzitKdSiyFvCvi
         IEP2q29Qq5uWYiGQ5aNlmu0Sv4BTIJ3c2UpaY7fTM2PUJtNHekd5bdTsdzthlYAqhO+z
         3ECf2O2m6u5bzdDqi6XqL/RI+xzaiAuuyLgde+M+h31cxKRYMYq9c7fDoVGOpYZmrtZ3
         R9SAfpGJCANimPATHMH4/3dQvS+KtVUzveS2BJ4fUI1EtOE5o9YBrsWSpYadaGmBkjqI
         /w4g==
X-Gm-Message-State: AOJu0YyA/TreiWQqNysVjOjl09gh2V3G3Rh6/DTvage//NmLsGiw05tQ
        GErOkka+3evBvMbKEHI36GDJCA==
X-Google-Smtp-Source: AGHT+IHcHpCPWGGuQCalvUlCtWXSPQR7UcviYoI/x96ewZ3wSGbIpw5Eenfmnefl5HaMNy7JBPtSmw==
X-Received: by 2002:a17:906:224c:b0:9a1:b144:30eb with SMTP id 12-20020a170906224c00b009a1b14430ebmr16693276ejr.54.1693297326537;
        Tue, 29 Aug 2023 01:22:06 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id i9-20020a1709061cc900b0098e42bef736sm5765721ejh.176.2023.08.29.01.22.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 01:22:06 -0700 (PDT)
Message-ID: <98d1439c-3f92-c787-7aaa-926a7602d394@linaro.org>
Date:   Tue, 29 Aug 2023 10:22:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 06/11] firmware: qcom-shm-bridge: new driver
Content-Language: en-US
To:     Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Alex Elder <elder@linaro.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230828192507.117334-1-bartosz.golaszewski@linaro.org>
 <20230828192507.117334-7-bartosz.golaszewski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230828192507.117334-7-bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/08/2023 21:25, Bartosz Golaszewski wrote:
> +/**
> + * qcom_shm_bridge_pool_new - Create a new SHM Bridge memory pool.
> + *
> + * @size: Size of the pool.
> + *
> + * Creates a new Shared Memory Bridge pool from which users can allocate memory
> + * chunks. Must be called from process context.
> + *
> + * Return:
> + * Pointer to the newly created SHM Bridge pool with reference count set to 1
> + * or ERR_PTR().
> + */
> +struct qcom_shm_bridge_pool *qcom_shm_bridge_pool_new(size_t size)
> +{
> +	struct device *dev;
> +
> +	dev = bus_find_device_by_name(&platform_bus_type, NULL,
> +				      "qcom-shm-bridge");
> +	if (!dev)
> +		return ERR_PTR(-ENODEV);
> +
> +	return qcom_shm_bridge_pool_new_for_dev(dev, size);
> +}
> +EXPORT_SYMBOL_GPL(qcom_shm_bridge_pool_new);

I do not see an user of this. Do not add exported symbols without users.
Drop export. I would even suggest drop the function entirely, why do we
need dead code?

> +
> +/**
> + * qcom_shm_bridge_pool_ref - Increate the refcount of an SHM Bridge pool.
> + *
> + * @pool: SHM Bridge pool of which the reference count to increase.
> + *
> + * Return:
> + * Pointer to the same pool object.
> + */
> +struct qcom_shm_bridge_pool *
> +qcom_shm_bridge_pool_ref(struct qcom_shm_bridge_pool *pool)
> +{
> +	kref_get(&pool->refcount);
> +
> +	return pool;
> +}
> +EXPORT_SYMBOL_GPL(qcom_shm_bridge_pool_ref);

Ditto

> +
> +/**
> + * qcom_shm_bridge_pool_unref - Decrease the refcount of an SHM Bridge pool.
> + *
> + * @pool: SHM Bridge pool of which the reference count to decrease.
> + *
> + * Once the reference count reaches 0, the pool is released.
> + */
> +void qcom_shm_bridge_pool_unref(struct qcom_shm_bridge_pool *pool)
> +{
> +	kref_put(&pool->refcount, qcom_shm_bridge_pool_release);
> +}
> +EXPORT_SYMBOL_GPL(qcom_shm_bridge_pool_unref);

Ditto

> +
> +static void devm_qcom_shm_bridge_pool_unref(void *data)
> +{
> +	struct qcom_shm_bridge_pool *pool = data;
> +
> +	qcom_shm_bridge_pool_unref(pool);
> +}
> +
> +/**
> + * devm_qcom_shm_bridge_pool_new - Managed variant of qcom_shm_bridge_pool_new.
> + *
> + * @dev: Device for which to map memory and which will manage this pool.
> + * @size: Size of the pool.
> + *
> + * Return:
> + * Pointer to the newly created SHM Bridge pool with reference count set to 1
> + * or ERR_PTR().
> + */
> +struct qcom_shm_bridge_pool *
> +devm_qcom_shm_bridge_pool_new(struct device *dev, size_t size)
> +{
> +	struct qcom_shm_bridge_pool *pool;
> +	int ret;
> +
> +	pool = qcom_shm_bridge_pool_new(size);
> +	if (IS_ERR(pool))
> +		return pool;
> +
> +	ret = devm_add_action_or_reset(dev, devm_qcom_shm_bridge_pool_unref,
> +				       pool);
> +	if (ret)
> +		return ERR_PTR(ret);
> +
> +	return pool;
> +}
> +EXPORT_SYMBOL_GPL(devm_qcom_shm_bridge_pool_new);

Ditto

> +
> +/**
> + * qcom_shm_bridge_alloc - Allocate a chunk of memory from an SHM Bridge pool.
> + *
> + * @pool: Pool to allocate memory from. May be NULL.
> + * @size: Number of bytes to allocate.
> + * @gfp: Allocation flags.
> + *
> + * If pool is NULL then the global fall-back pool is used.
> + *
> + * Return:
> + * Virtual address of the allocated memory or ERR_PTR(). Must be freed using
> + * qcom_shm_bridge_free().
> + */
> +void *qcom_shm_bridge_alloc(struct qcom_shm_bridge_pool *pool,
> +			    size_t size, gfp_t gfp)
> +{
> +	struct qcom_shm_bridge_chunk *chunk __free(kfree) = NULL;
> +	unsigned long vaddr;
> +	int ret;

...

> +
> +	return no_free_ptr(chunk)->vaddr;
> +}
> +EXPORT_SYMBOL_GPL(qcom_shm_bridge_alloc);
> +
> +/**
> + * qcom_shm_bridge_free - Free SHM Bridge memory allocated from the pool.
> + *
> + * @vaddr: Virtual address of the allocated memory to free.
> + */
> +void qcom_shm_bridge_free(void *vaddr)
> +{
> +	struct qcom_shm_bridge_chunk *chunk;
> +	struct qcom_shm_bridge_pool *pool;
> +
> +	scoped_guard(spinlock_irqsave, &qcom_shm_bridge_chunks_lock)
> +		chunk = radix_tree_delete_item(&qcom_shm_bridge_chunks,
> +					       (unsigned long)vaddr, NULL);
> +	if (!chunk)
> +		goto out_warn;
> +
> +	pool = chunk->parent;
> +
> +	guard(spinlock_irqsave)(&pool->lock);
> +
> +	list_for_each_entry(chunk, &pool->chunks, siblings) {
> +		if (vaddr != chunk->vaddr)
> +			continue;
> +
> +		gen_pool_free(pool->genpool, (unsigned long)chunk->vaddr,
> +			      chunk->size);
> +		list_del(&chunk->siblings);
> +		qcom_shm_bridge_pool_unref(pool);
> +		kfree(chunk);
> +		return;
> +	}
> +
> +out_warn:
> +	WARN(1, "Virtual address %p not allocated for SHM bridge", vaddr);
> +}
> +EXPORT_SYMBOL_GPL(qcom_shm_bridge_free);
> +

...

> +phys_addr_t qcom_shm_bridge_to_phys_addr(void *vaddr)
> +{
> +	struct qcom_shm_bridge_chunk *chunk;
> +	struct qcom_shm_bridge_pool *pool;
> +
> +	guard(spinlock_irqsave)(&qcom_shm_bridge_chunks_lock);
> +
> +	chunk = radix_tree_lookup(&qcom_shm_bridge_chunks,
> +				  (unsigned long)vaddr);
> +	if (!chunk)
> +		return 0;
> +
> +	pool = chunk->parent;
> +
> +	guard(spinlock_irqsave)(&pool->lock);
> +
> +	return gen_pool_virt_to_phys(pool->genpool, (unsigned long)vaddr);
> +}
> +EXPORT_SYMBOL_GPL(qcom_shm_bridge_to_phys_addr);

Ditto

Best regards,
Krzysztof

