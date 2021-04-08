Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A233358D1F
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 20:59:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232874AbhDHS7Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 14:59:24 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:33537 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232840AbhDHS7Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Apr 2021 14:59:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1617908352;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=jGlJrj8Sr8IBj8TN2rsGisALZdCmQ+BX44HmS4jkvMs=;
        b=PLciFGf92EqsDXRKwqV8r7o9qi5NZ4QVXGiKtWrm8qBgO9lMMr0qE+ek8LYtQacomVD9Vr
        IU5FdxZ85qiNEhnncN3fsvx+xlGXdOCwYpi8OhI11xcBba/alqp/PiEzkPnkVk9LTOZLwO
        RSkU2Nn7ieF1M82/O1jK9d3LRfxYgPw=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-527-ELnWJo84NZCKY8Bd2YJ6Mw-1; Thu, 08 Apr 2021 14:59:06 -0400
X-MC-Unique: ELnWJo84NZCKY8Bd2YJ6Mw-1
Received: by mail-ed1-f72.google.com with SMTP id l11so1472893edb.2
        for <devicetree@vger.kernel.org>; Thu, 08 Apr 2021 11:59:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jGlJrj8Sr8IBj8TN2rsGisALZdCmQ+BX44HmS4jkvMs=;
        b=YUsLbs8Z1QCayxe6iY/9txLnP5HxNpLQdh8dbvrvxl3s1XTIsUKeYie0Ws9PkN1RR6
         YW6BNnF2WnAUk7xzdKtPnkllaJfbtVkgv9QruuBUc2tEfooiYpM1slCD6F0UHmNx9d+/
         SjH6ozZfVCmBRTDltGkI3AO5geLWF5quqP+kncL15FYAueE8HZZ2fP5NSSZDgY1Az+s+
         qVARNcBAYIveiUoWyLaa+JxWoEYBHJ6vQ/z5YzYPTxy7ArrEpvmmXLR6j7q5V+jlpJgu
         qMPisWXTkx3z1B5FbgRY4ecA3/Bk/2zFlBErIzNi2cwVrmkFArn5wkc6X2KROp0jLUkE
         CWWg==
X-Gm-Message-State: AOAM532SrMllDFQ+kpf9Tj7YIbOGMezoUA48s7rBe9RZfUjlpr0EEKQc
        ToS3Y61tjcbTsUOY/UgIighXhglTQdz/+dezHGtroBRN34qe+xMgMuEPqV/XudXcu5QqYDOWO8r
        O/tB80hPeU6pl35uggDEeD4GhFXkovv85MT5qpzVcrkXoblJa+/fhmjOxZJ5jxUmHBlyUeIDw+g
        ==
X-Received: by 2002:a17:906:f42:: with SMTP id h2mr11345040ejj.317.1617908344614;
        Thu, 08 Apr 2021 11:59:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJywLXtC4VD/n8iqWZM+F0A6d3uFar5Po/mAux41Cmg/6Ql+58rtBWSXbKyxmnrnNlZBgxqdMg==
X-Received: by 2002:a17:906:f42:: with SMTP id h2mr11345011ejj.317.1617908344378;
        Thu, 08 Apr 2021 11:59:04 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id bh14sm99273ejb.104.2021.04.08.11.59.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:59:03 -0700 (PDT)
Subject: Re: [PATCH 2/4] usb: typec: Add
 typec_port_register_altmodes_from_fwnode()
To:     Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Tobias Schramm <t.schramm@manjaro.org>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org
References: <20200714113617.10470-1-hdegoede@redhat.com>
 <20200714113617.10470-3-hdegoede@redhat.com>
 <20200826131753.GB813478@kuha.fi.intel.com>
From:   Hans de Goede <hdegoede@redhat.com>
Message-ID: <b7fcbac3-0065-1f78-4c98-401c95c63246@redhat.com>
Date:   Thu, 8 Apr 2021 20:59:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20200826131753.GB813478@kuha.fi.intel.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi,

Sorry for being very very slow with getting around to
cleaning this up, there just always was some higher prio
item getting in the way; and any downtime I had I needed time
to recuperate.

On 8/26/20 3:17 PM, Heikki Krogerus wrote:
> On Tue, Jul 14, 2020 at 01:36:15PM +0200, Hans de Goede wrote:
>> This can be used by Type-C controller drivers which use a standard
>> usb-connector fwnode, with altmodes sub-node, to describe the available
>> altmodes.
>>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>  drivers/usb/typec/class.c | 56 +++++++++++++++++++++++++++++++++++++++
>>  include/linux/usb/typec.h |  7 +++++
>>  2 files changed, 63 insertions(+)
>>
>> diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
>> index c9234748537a..47de2b2e3d54 100644
>> --- a/drivers/usb/typec/class.c
>> +++ b/drivers/usb/typec/class.c
>> @@ -1607,6 +1607,62 @@ typec_port_register_altmode(struct typec_port *port,
>>  }
>>  EXPORT_SYMBOL_GPL(typec_port_register_altmode);
>>  
>> +void typec_port_register_altmodes_from_fwnode(struct typec_port *port,
>> +	const struct typec_altmode_ops *ops, void *drvdata,
>> +	struct typec_altmode **altmodes, size_t n,
>> +	struct fwnode_handle *fwnode)
> 
> That last fwnode parameter should not be needed. The port device
> should have the alternate mode nodes under it as child nodes. That is,
> unless I'm missing (or forgetting) something?

Ack, I'll fix this, test the code and send a v2 soon.

Regards,

Hans



> 
>> +{
>> +	struct fwnode_handle *altmodes_node, *child;
>> +	struct typec_altmode_desc desc;
>> +	struct typec_altmode *alt;
>> +	size_t index = 0;
>> +	u32 svid, vdo;
>> +	int ret;
>> +
>> +	altmodes_node = fwnode_get_named_child_node(fwnode, "altmodes");
> 
> So this would be:
> 
>         altmodes_node = fwnode_get_named_child_node(port->dev.fwnode, "altmodes");
> 
>> +	if (!altmodes_node)
>> +		return;
>> +
>> +	child = NULL;
>> +	while ((child = fwnode_get_next_child_node(altmodes_node, child))) {
>> +		ret = fwnode_property_read_u32(child, "svid", &svid);
>> +		if (ret) {
>> +			dev_err(&port->dev, "Error reading svid for altmode %s\n",
>> +				fwnode_get_name(child));
>> +			continue;
>> +		}
>> +
>> +		ret = fwnode_property_read_u32(child, "vdo", &vdo);
>> +		if (ret) {
>> +			dev_err(&port->dev, "Error reading vdo for altmode %s\n",
>> +				fwnode_get_name(child));
>> +			continue;
>> +		}
>> +
>> +		if (index >= n) {
>> +			dev_err(&port->dev, "Error not enough space for altmode %s\n",
>> +				fwnode_get_name(child));
>> +			continue;
>> +		}
>> +
>> +		desc.svid = svid;
>> +		desc.vdo = vdo;
>> +		desc.mode = index + 1;
>> +		alt = typec_port_register_altmode(port, &desc);
>> +		if (IS_ERR(alt)) {
>> +			dev_err(&port->dev, "Error registering altmode %s\n",
>> +				fwnode_get_name(child));
>> +			continue;
>> +		}
>> +
>> +		alt->ops = ops;
>> +		typec_altmode_set_drvdata(alt, drvdata);
>> +		altmodes[index] = alt;
>> +		index++;
>> +	}
>> +}
>> +EXPORT_SYMBOL_GPL(typec_port_register_altmodes_from_fwnode);
>> +
>>  /**
>>   * typec_register_port - Register a USB Type-C Port
>>   * @parent: Parent device
> 
> thanks,
> 

