Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67E3F42898B
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 11:19:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235418AbhJKJVe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 05:21:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235450AbhJKJVe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Oct 2021 05:21:34 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39D24C06161C
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 02:19:34 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id v17so53849008wrv.9
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 02:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:from:content-transfer-encoding;
        bh=S05pxta+ZXwPiNVHj0o7znwtIKDPx6p1RnfKWR+ZKzw=;
        b=DT0TReZx/UNR7+7KfZsIrJOTewDmtWUi6/vEbJti1KOwSCHy4KF8PrlyuTmwxZdtvq
         w2NpaSZOLyRYrjTVL5oTk3pIcqmTd5VV1KMW+I141BzLO5aybXvk7QZhu9yDRcKPzqY+
         GwwKhBoL6229xhzjEXM2iK53SkwN809iPF1Ufv29Ipjaoz/KIlEnGa/GxOqM9L47/8OM
         dzSyeFHq1SQk5/gDAoG8yhr+zsiIkGXlNQjbiEYUA5Ess+Rr5BtI999GyaSQ8Q7zSY88
         ml9G5kr11m2CcjbkmsUiDYboeAhirYFbvHkJRXTLRDl1IgHeY9ua/TCRvs/J82CmQ0e7
         JuXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:from:content-transfer-encoding;
        bh=S05pxta+ZXwPiNVHj0o7znwtIKDPx6p1RnfKWR+ZKzw=;
        b=xYpKc8rpA3wzwljZDCGX7D88P9BxtoGDLNUehd4Tzg7TWIdYrNrcwH8ctriooupIHY
         6HIRE+lz7L3B1oW09K0SlB8XPDKzyAxm1ulDzn6bWXxfwHp7ZcZxdTEiyb803qDxb+XZ
         eoth1maUcAhCn/SVW+RQY+ymWUEu0yBaAWNHqrevM2sCWvrEXWqiweIBjTPbkODzV5Qt
         cQiQzDvRawf5QDbIJ5oRjNW3Rot8GBV4d5rikF4b1NovN24GPnztOwcAHR4S+elHv15E
         2r0SDXegkI4IKOc0IExwhxYNG9inQAGW1MyzoHJmq4X2giI9wVW/Ir2TGbeP30m30whA
         fXeA==
X-Gm-Message-State: AOAM531TNPkm8GdeuMhETivQvedOAV0VLfI74yA6yjePeU278wKVjJtA
        16PyBbSRlkF/TCWhyJR4ANbkDQ==
X-Google-Smtp-Source: ABdhPJyP3wjY/iJBjgVdDFmA077hCeDNfCsCtTcxT1vLMGRX936op1X/651y+K7jB41SbpbfC55W6g==
X-Received: by 2002:a5d:58ec:: with SMTP id f12mr22826412wrd.24.1633943972843;
        Mon, 11 Oct 2021 02:19:32 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id p8sm7243670wmg.15.2021.10.11.02.19.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Oct 2021 02:19:32 -0700 (PDT)
Message-ID: <616401a4.1c69fb81.439b9.441f@mx.google.com>
Date:   Mon, 11 Oct 2021 02:19:32 -0700 (PDT)
From:   srinivas.kandagatla@linaro.org
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 08/10/2021 16:30, Mark Brown wrote:
> On Fri, Oct 08, 2021 at 07:37:12PM +0530, Srinivasa Rao Mandadapu wrote:
>> On 9/28/2021 2:01 PM, Srinivas Kandagatla wrote:
> 
>>> In that case you should probably consider using regmap_register_patch()
>>> for corrections to the default registers in sm8250 case.
> 
>> As regmap_register_patch() not working in this use case, updating defaults
>> in probe for sc7280 specific differences.
> 
> In what way is regmap_register_patch() not working?

SM8250 and SC7280 has different register defaults values for few 
(atleast 2 that we are aware of) registers.

Initially we thought regmap_register_patch() would help in this case, 
but later learned that it was designed for completely different usecase 
and this will not update the cache values with the new values from 
reg_sequence passed to regmap_register_patch().

What we want was to be able to reflect that default values in the 
regcaches, so that subsequent writes are not ignored based on incorrect 
cache values.

There are two ways to fix this, one is to come up with a full default 
register list specific to SC7280 or reuse SM8250 defaults with some 
modifications, other option is to update default registers based on 
compatible string before regmap creation. I suggested Srinivasa to use 
the second option as 99% of the defaults match to SM8250.


--srini

> 


